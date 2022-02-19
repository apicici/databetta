global = require "global"
ffi = require "ffi"
utf8 = require("utf8")

love.graphics.setDefaultFilter("nearest", "nearest")
love.keyboard.setKeyRepeat(true)

FONT_SIZE = 16

M = {
    t: 0
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

M.mouseclicked = (x, y) =>
    @cursor = @find_position(x, y)
    @pos = @cursor_to_pos(@cursor)
    @end_cursor, @end_pos = nil
    @t = 0

M.mousemoved = (x, y) =>
    @end_cursor = @find_position(clip(x, @x, @x + @w), clip(y, @y, @y + @h))
    @end_pos =  @cursor_to_pos(@end_cursor)

M.mousereleased = (x, y, double) =>
    if @end_pos == @pos
        @end_cursor, @end_pos = nil

    -- if t > 0.2
    --     end_cursor = @find_position(clip(x, 0, @w), clip(y, 0, @h))
    -- print("released", x, y, t, double)

M.keypressed = (key, isrepeat) =>
    switch key
        when "return", "kpenter"
            if @end_cursor
                @replace(@pos, @end_pos, "\n")
            else
                @insert_string("\n")
        when "backspace"
            if @end_cursor
                @delete(@pos, @end_pos)
            else
                p = utf8.offset(@text, @pos)
                @text = @text\sub(1, p - 2) .. @text\sub(p)
                @wrap_text()
                @pos = math.max(@pos - 1, 1)
                @cursor = @pos_to_cur(@pos)
        when "delete"
            if @end_cursor
                @delete(@pos, @end_pos)
            else
                p = utf8.offset(@text, @pos)
                @text = @text\sub(1, p - 1) .. @text\sub(p + 1)
                @wrap_text()
                @cursor = @pos_to_cur(@pos)
        when "left"
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
            if line = @wrappedtext[@cursor.line - 1]
                line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
                @cursor.line -= 1
                @cursor.cursor = math.min(@cursor.cursor, line_len)
                @pos = @cursor_to_pos(@cursor)
        when "down"
            if line = @wrappedtext[@cursor.line + 1]
                line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
                @cursor.line += 1
                @cursor.cursor = math.min(@cursor.cursor, line_len)
                @pos = @cursor_to_pos(@cursor)
        when "home"
            @cursor.cursor = 0
            @pos = @cursor_to_pos(@cursor)
        when "end"
            line = @wrappedtext[@cursor.line]
            line_len = utf8.len(line) - (line\sub(-1) == "\n" and 1 or 0)
            @cursor.cursor = line_len
            @pos = @cursor_to_pos(@cursor)
        when "lctrl", "rctrl", "lgui", "rgui", "c", "v"
            return if isrepeat
            if love.keyboard.isDown("lctrl", "rctrl", "lgui", "rgui")
                if love.keyboard.isDown("c")
                    love.system.setClipboardText(@end_cursor and @get_substring(@pos, @end_pos) or "")
                elseif love.keyboard.isDown("v")
                    text = love.system.getClipboardText()
                    text = text\gsub("\r", "")\gsub("\t", " ")
                    if @end_cursor
                        @replace(@pos, @end_pos, text)
                    else
                        @insert_string(text)

M.delete = (i, j) =>
    if i > j
        i, j = j, i
    p1, p2 = utf8.offset(@text, i), utf8.offset(@text, j)
    @text = @text\sub(1, p1 - 1) .. @text\sub(p2)
    @wrap_text()
    @end_cursor, @end_pos = nil
    @pos = i
    @cursor = @pos_to_cur(@pos)

M.replace = (i, j, s) =>
    if i > j
        i, j = j, i
    p1, p2 = utf8.offset(@text, i), utf8.offset(@text, j)
    @text = @text\sub(1, p1 - 1) .. s .. @text\sub(p2)
    @wrap_text()
    @end_cursor, @end_pos = nil
    @pos = i + utf8.len(s)
    @cursor = @pos_to_cur(@pos)

M.get_substring = (i, j) =>
    if i > j
        i, j = j, i
    p1, p2 = utf8.offset(@text, i), utf8.offset(@text, j)
    return @text\sub(p1, p2 - 1)

M.textinput = (t) =>
    if @end_cursor
        @replace(@pos, @end_pos, t)
    else
        @insert_string(t)

M.insert_string = (s) =>
    p = utf8.offset(@text, @pos)
    @text = @text\sub(1, p - 1) .. s .. @text\sub(p)
    @wrap_text()
    @pos += utf8.len(s)
    @cursor = @pos_to_cur(@pos)


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


    



return M