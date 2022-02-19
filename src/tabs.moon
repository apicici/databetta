im = require "cimgui"
sqlite = require "lsqlite3complete"
global = require "global"
Class = require "class"
ffi = require "ffi"

M = {}

ROWS_PER_PAGE = 50

table_flags = im.love.TableFlags(
    "Resizable",
    "RowBg",
    "Borders",
    "SizingFixedFit",
    "ScrollX",
    "ScrollY"
)

Tab = Class {
    __init: (@sql_table, @tab_name, @headers) =>
        @page_p = ffi.new("int[1]", 1)

    load: (page = 1) =>
        global.current_tab = self
        db = global.database
        local numrows
        for row in db\urows("SELECT COUNT(ID) FROM '#{@sql_table}'")
            numrows = row
        @numpages = math.ceil(numrows/ROWS_PER_PAGE)
        page = math.min(page, @numpages)
        @page_p[0] = page
        offset = ROWS_PER_PAGE*(page - 1)
        @table = {}
        @selected_row, @cell_selected = nil
        @pages_width = 50 + #tostring(@numpages)*15

        sql = "SELECT * FROM '#{@sql_table}' ORDER BY ID DESC LIMIT #{ROWS_PER_PAGE} OFFSET #{offset}"
        for row in db\nrows(sql)
            if not row.ID then break
            @table[#@table + 1] = row

    update: =>
        tmp = @cell_selected
        @load(@page_p[0])
        @cell_selected = tmp
        
    addRow: =>
        db = global.database
        db\exec("INSERT INTO '#{@sql_table}' DEFAULT VALUES")
        global.changed = true
        @load()
        @selected_row = 1

    draw: =>
        if im.BeginTabItem(@tab_name)
            if not @table or global.refresh_tabs
                @load()
                global.refresh_tabs = false

            im.Spacing()
            im.AlignTextToFramePadding()
            im.Text("Pagina")
            im.SameLine()
            im.SetNextItemWidth(@pages_width*global.scale_p[0])
            if im.InputInt("##page", @page_p)
                newpage = @page_p[0]
                if newpage < 1
                    @page_p[0] = 1
                elseif newpage > @numpages
                    @page_p[0] = math.max(@numpages, 1)
                else
                    @load(newpage)
            im.SameLine()        
            im.Text("di #{@numpages}")
            im.SameLine()
            im.TextDisabled("|")
            im.SameLine()
            if im.Button("Inserisci riga")
                @addRow()
            im.Spacing()
    
            if im.BeginTable(@tab_name, #@headers + 1, table_flags)
                im.TableSetupColumn("")
                for name in *@headers
                    im.TableSetupColumn(name)
                im.TableHeadersRow()

                for i, values in ipairs(@table)
                    row_selected = @selected_row == i
                    im.TableNextRow()
                    im.TableNextColumn()
                    rowlabel = tostring(i + ROWS_PER_PAGE*(@page_p[0] - 1))
                    im.Selectable_Bool(rowlabel, row_selected)
                
                    if im.BeginPopupContextItem()
                        @popup_opened = i
                        @selected_row = i
                        @cell_selected = nil
                        if im.Button("Elimina riga")
                            @removeRow(i)
                            im.CloseCurrentPopup()
                            @selected_row = nil
                        im.EndPopup()
                    elseif @popup_opened == i
                        @popup_opened = nil
                        @selected_row = nil

                    
                    for name in *@headers
                        im.TableNextColumn()
                        selected = @cell_selected and @cell_selected.ID == values.ID and @cell_selected.name == name
                        t = values[name]
                        local text, value, tooltip
                        if type(t) == "table"
                            tooltip = type(t.custom) == "table"
                            text =  tooltip and (#t.custom > 0 and "[...]" or "[]") or t.custom or ""
                            value = t.value
                        else
                            text = t or ""
                            value = t

                        if im.Selectable_Bool(text .. "##" .. i .. name, row_selected or selected) and not selected
                            @selected_row = nil
                            @cell_selected = {ID: values.ID, name: name, value: value, custom_value: text}
                        if tooltip and #t.custom >0 and im.IsItemHovered()
                            im.BeginTooltip()
                            for s in *t.custom
                                im.Text(s or "")
                            im.EndTooltip()

                im.EndTable()
    
            im.EndTabItem()
        
        if im.IsItemActivated()
            @load()
}

M.other = Class {
    __extends: Tab

    __init: (sql_table, @documenti_columns, tab_name) =>
        Tab.__init(self, sql_table, tab_name, {"Nome"})

    removeRow: (i) =>
        ID = @table[i].ID
        db = global.database
        count = 0

        if type(@documenti_columns) == "table"
            for column in *@documenti_columns
                for row in db\urows("SELECT COUNT(ID) FROM '#{column}' WHERE ID = #{ID}")
                    count += row
        else
            for row in db\urows("SELECT COUNT(ID) FROM Documenti WHERE [#{@documenti_columns}] = #{ID}")
                count += row
            
        if count > 0
            global.error = "Impossibile eliminare perché questa voce è utilizzata in uno dei documenti."
        else
            db\exec("DELETE FROM '#{@sql_table}' WHERE ID = #{ID}")
            @load(@page_p[0])
            global.changed = true    
}

headers = {
    "Data"
    "Tipo di documento"
    "Tipo di comunicazione"
    "Mittenti"
    "Destinatari"
    "Note"
    "Segnatura"
    "Paese"
    "Luogo"
    "Parole chiave"
}

multi_parents = {
    "Mittenti": {doc:"Doc - mittenti", names:"Mittenti/destinatari"}
    "Destinatari": {doc:"Doc - destinatari", names:"Mittenti/destinatari"}
    "Parole chiave": {doc:"Doc - chiave", names:"Parole chiave"}
}

combo_parents = {
    "Paese": "Paesi"
    "Luogo": "Luoghi"
    "Tipo di documento": "Tipi documento"
    "Tipo di comunicazione": "Tipi comunicazione"
}

M.documenti = Class {
    __extends: Tab

    __init: =>
        Tab.__init(self, "Documenti", "Documenti", headers)

    removeRow: (i) => print("todo")

    load: (page=1) =>
        Tab.load(self, page)
        db = global.database
        for row in *@table
            for name in *@headers
                if sql_table = combo_parents[name]
                    s = db\prepare("SELECT Nome FROM '#{sql_table}' WHERE ID = ?")
                    s\bind_values(row[name])
                    custom = s\step() == sqlite.ROW and s\get_value(0) or nil
                    row[name] = {value:row[name], custom: custom}
                    s\finalize()
                elseif t = multi_parents[name]
                    a, b = "'#{t.names}'", "'#{t.doc}'"
                    sql = "SELECT #{a}.Nome FROM #{a} INNER JOIN #{b} ON #{a}.ID = #{b}.ID WHERE #{b}.DocID = ?"
                    s = db\prepare(sql)
                    s\bind_values(row.ID)
                    custom = {}
                    while s\step() == sqlite.ROW
                        custom[#custom + 1] = s\get_value(0)
                    row[name] = {value:row[name], custom: custom}
                    s\finalize()
                else
                    text = row[name] or ""
                    m = text\match("(.-)\n")
                    custom = m and m .. "..." or text
                    row[name] = {value:text, custom: custom}


    removeRow: (i) =>
        ID = @table[i].ID
        db = global.database
        count = 0
        db\exec("DELETE FROM Documenti WHERE ID = #{ID}")
        for _, t in pairs(multi_parents)
            db\exec("DELETE FROM '#{t.doc}' WHERE DocID = #{ID}")
        @load(@page_p[0])
        global.changed = true    
}


return M