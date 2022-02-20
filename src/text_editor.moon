global = require "global"
ffi = require "ffi"
utf8 = require("utf8")
Class = require "class"

local *

love.graphics.setDefaultFilter("nearest", "nearest")
love.keyboard.setKeyRepeat(true)

FONT_SIZE = 16
MAX_HISTORY = 200

M = {
    t: 0
    history: {}
}

clip = (x, a, b) ->
    x < a and a or x > b and b or x

M.set_sizes = (x, y, w, h, px, py, scrollbar, @scroll) =>
    if not x
        @x = nil
        return
    oldw = @w
    @x = x + px
    @y = y + py
    @w = w - 2*px - scrollbar
    @h = h - 2*py
    @wrap_text() if @w ~= oldw

    @min_line = math.floor(@scroll/@lineheight) + 1
    @max_line = @min_line + math.floor(@h/@lineheight)

M.set_text = (@text) =>
    @w = 0
    @history = {}

M.set_padding = () =>
M.set_focus = (@focused) =>

M.is_active = => return @x and @focused

M.set_scale = (@scale) =>
    @font = love.graphics.newFont("ProggyClean.ttf", 16*scale)
    @lineheight = 16*scale
    @cursorheight = 12*scale
    @charwidth = @font\getWidth("x")
    @wrap_text() if @text and @w

M\set_scale(1)

M.get_text = => return @text

M.wrap_text = =>
    t, lenghts = {}, {}
    max_len = math.floor(@w/@charwidth)
    if max_len < 1
        @wrappedtext = {}
        @full_height = 0

    line, last_space = {}, 0
    for _, c in utf8.codes(@text)
        s = utf8.char(c)
        if s == "\n"
            line[#line + 1] = s
            t[#t + 1] = table.concat(line)
            line, last_space = {}, 0
        elseif #line < max_len
            line[#line + 1] = s
            if s ~= " " and line[#line - 1] == " "
                last_space = #line - 1
        elseif last_space > 0
            tmp = table.concat(line)
            p = utf8.offset(tmp, last_space)
            t[#t + 1] = tmp\sub(1, p)
            line = [x for x in *line[last_space + 1, ]]
            line[#line + 1] = s
            last_space = 0
        else
            t[#t + 1] = table.concat(line)
            line, last_space = {s}, 0
    t[#t + 1] = table.concat(line)

    @wrappedtext = t
    @full_height = #@wrappedtext*@lineheight


M.draw = () =>
    return if not @x or @w < 0

    if @focused
        if @end_cursor
            love.graphics.setColor(0.165, 0.322, 0.525)
            c1 = @pos <= @end_pos and @cursor or @end_cursor
            c2 = @pos <= @end_pos and @end_cursor or @cursor
            for i = c1.line, c2.line
                x =  i == c1.line and (@x + c1.cursor*@charwidth) or @x
                y = @y + (i - 1)*@lineheight - @scroll
                local w
                if  i == c2.line
                    w = @x + c2.cursor*@charwidth - x
                else
                    line = @wrappedtext[i]
                    line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
                    w = line_len*@charwidth - x + @x

                love.graphics.rectangle("fill", x, y, w, @lineheight)

        elseif @cursor and @t < 0.5
            love.graphics.setColor(0.67, 0.67, 0.67)
            x = @x + @charwidth*(@cursor.cursor)
            y = @y + @lineheight*(@cursor.line - 1) - @scroll
            love.graphics.rectangle("fill", x, y, @scale, @cursorheight)

    
    love.graphics.setColor(1, 1, 1)
    love.graphics.setScissor(@x, @y, @w, @h)
    love.graphics.setFont(@font)
    for i, text in ipairs(@wrappedtext)
        if i >= @min_line and i <= @max_line
            love.graphics.print(text, @x, @y + (i - 1)*@lineheight - @scroll)

    love.graphics.setScissor()

M.update = (dt) =>
    @t = math.fmod(@t + dt, 1)

M.mouseclicked = (x, y, double) =>
    @cursor = @find_position(x, y)
    @pos = @cursor_to_pos(@cursor)
    @end_cursor, @end_pos = nil
    @t = 0
    @released = false

    if double
        p = utf8.offset(@text, @pos)
        if s2 = @text\sub(p)\match("^%S+")
            s1 = @text\sub(1, p - 1)\match("%S*$")
            @end_pos = @pos + utf8.len(s2)
            @end_cursor = @pos_to_cur(@end_pos)
            @pos -= utf8.len(s1)
            @cursor = @pos_to_cur(@pos)

M.mousemoved = (x, y) =>
    @end_cursor = @find_position(clip(x, @x, @x + @w), clip(y, @y, @y + @h))
    @end_pos =  @cursor_to_pos(@end_cursor)

M.mousereleased = (x, y, double) =>
    @released = true
    if @end_pos == @pos
        @end_cursor, @end_pos = nil
        
M.keypressed = (key, isrepeat) =>
    return unless @released
    switch key
        when "return", "kpenter"
            if @end_cursor
                @add_to_history(Replace(@pos, @end_pos, "\n", @get_chars(@pos, @end_pos)))
                @replace(@pos, @end_pos, "\n")
            else
                @add_to_history(Insert(@pos, "\n"))
                @insert_string(@pos, "\n")
        when "backspace"
            if @end_cursor
                @add_to_history(Replace(@pos, @end_pos, "", @get_chars(@pos, @end_pos)))
                @replace(@pos, @end_pos, "")
            elseif @pos > 1
                char =  @get_chars(@pos - 1)
                subtype = switch char
                    when " "
                        "space"
                    when "\n"
                        nil
                    else
                        "other"
                if subtype and @history.num_next == 0 and @history.current and @history.current.__class == Delete_backspace and @history.current.type == subtype
                    @history.current\add_char(char)
                else
                    @add_to_history(Delete_backspace(@pos, char, subtype))
                @delete_backspace(@pos, 1)
        when "delete"
            if @end_cursor
                @add_to_history(Replace(@pos, @end_pos, "", @get_chars(@pos, @end_pos)))
                @replace(@pos, @end_pos, "")
            elseif @pos <= utf8.len(@text)
                char =  @get_chars(@pos)
                subtype = switch char
                    when " "
                        "space"
                    when "\n"
                        nil
                    else
                        "other"
                if subtype and @history.num_next == 0 and @history.current and @history.current.__class == Delete_delete and @history.current.type == subtype
                    @history.current\add_char(char)
                else
                    @add_to_history(Delete_delete(@pos, char, subtype))
                @delete_delete(@pos, 1)
        when "left"
            if @end_cursor
                @pos = math.min(@pos, @end_pos)
                @cursor = @pos_to_cur(@pos)
                @end_cursor, @end_pos = nil
            else
                cursor = @cursor.cursor - 1
                if cursor < 0
                    if line = @wrappedtext[@cursor.line - 1]
                        line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
                        @cursor.cursor = line_len
                        @cursor.line -= 1
                    else
                        @cursor.cursor = 0
                else
                    @cursor.cursor = cursor
                @pos = @cursor_to_pos(@cursor)
        when "right"
            if @end_cursor
                @pos = math.max(@pos, @end_pos)
                @cursor = @pos_to_cur(@pos)
                @end_cursor, @end_pos = nil
            else
                cursor = @cursor.cursor + 1
                line = @wrappedtext[@cursor.line]
                line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
                if cursor > line_len
                    if @cursor.line < #@wrappedtext
                        @cursor.cursor = 0
                        @cursor.line += 1
                    else
                        @cursor.cursor = line_len
                else
                    @cursor.cursor = cursor
                @pos = @cursor_to_pos(@cursor)
        when "up"
            first_cursor = @end_pos and @end_pos < @pos and @end_cursor or @cursor
            if line = @wrappedtext[first_cursor.line - 1]
                line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
                @cursor.line -= 1
                @cursor.cursor = math.min(first_cursor.cursor, line_len)
                @pos = @cursor_to_pos(@cursor)
                @end_cursor, @end_pos = nil
        when "down"
            last_cursor = @end_pos and @end_pos > @pos and @end_cursor or @cursor
            if line = @wrappedtext[last_cursor.line + 1]
                line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
                @cursor.line += 1
                @cursor.cursor = math.min(last_cursor.cursor, line_len)
                @pos = @cursor_to_pos(@cursor)
                @end_cursor, @end_pos = nil
        when "home"
            @cursor.cursor = 0
            @pos = @cursor_to_pos(@cursor)
            @end_cursor, @end_pos = nil
        when "end"
            line = @wrappedtext[@cursor.line]
            line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
            @cursor.cursor = line_len
            @pos = @cursor_to_pos(@cursor)
            @end_cursor, @end_pos = nil
        when "c", "v", "z", "y", "a", "x"
            if love.keyboard.isDown("lctrl", "rctrl", "lgui", "rgui")
                if love.keyboard.isDown("c") and not isrepeat
                    if @end_pos and @end_pos ~= @pos
                        love.system.setClipboardText(@get_chars(@pos, @end_pos))
                elseif love.keyboard.isDown("v")
                    text = love.system.getClipboardText()
                    text = text\gsub("\r", "")\gsub("\t", " ")
                    if @end_cursor
                        @add_to_history(Replace(@pos, @end_pos, text, @get_chars(@pos, @end_pos)))
                        @replace(@pos, @end_pos, text)
                    else
                        @add_to_history(Insert(@pos, text))
                        @insert_string(@pos, text)
                elseif love.keyboard.isDown("x") and not isrepeat
                    if @end_pos and @end_pos ~= @pos
                        text = @get_chars(@pos, @end_pos)
                        love.system.setClipboardText(text)
                        @add_to_history(Replace(@pos, @end_pos, "", text))
                        @replace(@pos, @end_pos, "")
                elseif love.keyboard.isDown("z")
                    if action = @history.current
                        action\undo()
                        @history.current = action.previous
                        @history.num_next += 1
                elseif love.keyboard.isDown("y")
                    action = if @history.current
                        @history.current.next
                    else
                        @history.last
                    
                    if action 
                        action\redo()
                        @history.current = action
                        @history.num_next -= 1
                elseif love.keyboard.isDown("a") and not isrepeat
                    len = utf8.len(@text)
                    if len > 0
                        @pos = 1
                        @end_pos = len + 1
                        @cursor = @pos_to_cur(@pos)
                        @end_cursor = @pos_to_cur(@end_pos)
                
M.textinput = (t) =>
    return unless @released
    if @end_cursor
        @add_to_history(Replace(@pos, @end_pos, t, @get_chars(@pos, @end_pos)))
        @replace(@pos, @end_pos, t)
    else
        subtype = switch t
            when " "
                "space"
            else
                "other"
        if @history.num_next == 0 and @history.current and @history.current.__class == Insert and @history.current.type == subtype
            @history.current\add_char(t)
        else
            @add_to_history(Insert(@pos, t, subtype))
        @insert_string(@pos, t)

--- CURSOR ---

M.find_position = (x, y) =>
    return unless @x
    -- first find line
    line_num = math.floor((y - @y + @scroll)/@lineheight) + 1
    line_num = clip(line_num, 1, #@wrappedtext)
    line = @wrappedtext[line_num]
    cursor = math.floor((x - @x)/@charwidth + 0.5)
    line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
    cursor =  math.min(cursor, line_len)
    return {line:line_num, cursor:cursor}

M.cursor_to_pos = (cursor) =>
    pos = 1
    for i = 1, cursor.line - 1
        pos += utf8.len(@wrappedtext[i])
    pos += cursor.cursor
    return pos

M.pos_to_cur = (pos) =>
    cursor = {}
    chars = 0
    for i, line in ipairs(@wrappedtext)
        count = utf8.len(line)
        if chars + count >= pos
            cursor.line = i
            cursor.cursor = pos - chars - 1
            return cursor
        chars += count
    cursor.line = #@wrappedtext
    cursor.cursor = utf8.len(@wrappedtext[#@wrappedtext])
    return cursor

M.get_chars = (i, j=i+1) =>
    if i > j
        i, j = j, i
    p1, p2 = utf8.offset(@text, i), utf8.offset(@text, j)
    return utf8.char(utf8.codepoint(@text, p1, p2 - 1))

--- EDIT ---

M.replace = (i, j, s, cursor_at_beginning=false) =>
    if i > j
        i, j = j, i
    p1, p2 = utf8.offset(@text, i), utf8.offset(@text, j)
    @text = @text\sub(1, p1 - 1) .. s .. @text\sub(p2)
    @wrap_text()
    @end_cursor, @end_pos = nil
    @pos = cursor_at_beginning and i or i + utf8.len(s)
    @cursor = @pos_to_cur(@pos)

M.delete_backspace = (pos, len) =>
    @replace(pos - len, pos, "", true)

M.delete_delete = (pos, len) =>
    @replace(pos, pos + len, "")

M.insert_string = (pos, s, cursor_at_beginning) =>
    @replace(pos, pos, s, cursor_at_beginning)

--- HISTORY ---

Delete_backspace = Class {
    __init: (@pos, char, subtype) =>
        @type = subtype
        @chars = char
        @len = 1

    add_char: (char) =>
        @chars = char .. @chars
        @len += 1
    
    redo: =>
        M\delete_backspace(@pos, @len)

    undo: =>
        M\insert_string(@pos - @len, @chars)
}

Delete_delete = Class {
    __init: (@pos, char, subtype) =>
        @type = subtype
        @chars = char
        @len = 1

    add_char: (char) =>
        @chars = @chars .. char
        @len += 1
    
    redo: =>
        M\delete_delete(@pos, @len)

    undo: =>
        M\insert_string(@pos, @chars, true)
}

Insert = Class {
    __init: (@pos, text, subtype) =>
        @type = subtype
        @chars = text
        @len = utf8.len(text)

    add_char: (char) =>
        @chars = @chars .. char
        @len += 1
    
    redo: =>
        M\insert_string(@pos, @chars)

    undo: =>
        M\delete_delete(@pos, @len)
}

Replace = Class {
    __init: (@pos1, @pos2, @newtext, @oldtext) =>
        @len = utf8.len(newtext)
    
    redo: =>
        M\replace(@pos1, @pos2, @newtext)

    undo: =>
        M\replace(@pos1, @pos1 + @len, @oldtext)
}
    
M.add_to_history = (action) =>
    if previous = @history.current
        action.previous = previous
        previous.next = action
        @history.len = @history.len + 1 - @history.num_next
        if @history.len > MAX_HISTORY
            newlast = @history.last.next
            newlast.previous = nil
            @history.last = newlast
            @history.len = MAX_HISTORY
    else
        @history.len = 1
        @history.last = action
    
    @history.num_next = 0
    @history.current = action

return M