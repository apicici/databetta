im = require "cimgui"
global = require "global"
ffi = require "ffi"
tabs = require "tabs"
sqlite = require "lsqlite3complete"
M = {}

step = ffi.new("int[1]", 1)
local date, buffer
combo = {}
combo.parents = {
    "Paese": "Paesi"
    "Luogo": "Luoghi"
    "Tipo di documento": "Tipi documento"
    "Tipo di comunicazione": "Tipi comunicazione"
}
search = ffi.new("char[150]", "")
searchstring = ""
multi = {}
multi.parents = {
    "Mittenti": {doc:"Doc - mittenti", names:"Mittenti/destinatari"}
    "Destinatari": {doc:"Doc - destinatari", names:"Mittenti/destinatari"}
    "Parole chiave": {doc:"Doc - chiave", names:"Parole chiave"}
}
multi.show_all = true


clip = (x, a, b) ->
    x < a and a or x > b and b or x

draw_text = () ->
    tab = global.current_tab
    cell = tab.cell_selected
    if not cell.initialised
        buffer = ffi.new("char[200]", cell.value or "")
        cell.initialised = true
        
    im.InputTextMultiline("##text", buffer, 200)
    if im.Button("Applica")
        sql = string.format("UPDATE '%s' SET [%s] = ? WHERE ID = ?", tab.sql_table, cell.name)
        s = global.database\prepare(sql)
        s\bind_values(ffi.string(buffer), cell.ID)
        s\step()
        s\finalize()
        global.changed = true
        tab\update()

draw_date = () ->
    tab = global.current_tab
    cell = tab.cell_selected
    if not cell.initialised
        cell.value = cell.value or "2000-01-01"
        t = [tonumber(s) for s in cell.value\gmatch("[^-]+")]
        date = ffi.new("int[3]", t)
        cell.initialised = true

    if im.InputScalar("Anno", im.ImGuiDataType_S32, date, step, nil, "%04d")
        date[0] = clip(date[0], 0, 9999)
    if im.InputScalar("Mese", im.ImGuiDataType_S32, date + 1, step, nil, "%02d")
        date[1] = clip(date[1], 1, 12)
    if im.InputScalar("Giorno", im.ImGuiDataType_S32, date + 2, step, nil, "%02d")
        date[2] = clip(date[2], 1, 31)

    if im.Button("Applica")
        sql = string.format("UPDATE '%s' SET [%s] = ? WHERE ID = ?", tab.sql_table, cell.name)
        s = global.database\prepare(sql)
        s\bind_values(string.format("%04d-%02d-%02d", date[0], date[1], date[2]), cell.ID)
        s\step()
        s\finalize()
        global.changed = true
        tab\update()

draw_combo = () ->
    tab = global.current_tab
    cell = tab.cell_selected
    if not cell.initialised
        sql = "SELECT ID, Nome FROM '#{combo.parents[cell.name]}'"
        combo.choices = [x for x in global.database\nrows(sql)]
        combo.item, combo.preview = cell.value, cell.custom_value
        searchstring = ""
        cell.initialised = true
    
    if im.BeginCombo("##combo", combo.preview or "")
        if im.InputText("Filtra", search, 100)
            searchstring = ffi.string(search)
        for v in *combo.choices
            if string.upper(v.Nome or "")\match(searchstring\upper())
                if im.Selectable_Bool(v.Nome, combo.item == v.ID)
                    combo.item = v.ID
                    combo.preview = v.Nome
        im.EndCombo()
    else
        search[0] = 0

    if im.Button("Applica")
        sql = string.format("UPDATE '%s' SET [%s] = ? WHERE ID = ?", tab.sql_table, cell.name)
        s = global.database\prepare(sql)
        s\bind_values(combo.item, cell.ID)
        s\step()
        s\finalize()
        global.changed = true
        tab\update()

draw_multiple = () ->
    tab = global.current_tab
    cell = tab.cell_selected
    parent = multi.parents[cell.name]
    if not cell.initialised
        sql = "SELECT ID, Nome FROM '#{parent.names}'"
        multi.choices = [x for x in global.database\nrows(sql)]
        
        multi.exists = {}
        for i, v in ipairs(multi.choices)
            s = global.database\prepare("SELECT * FROM '#{parent.doc}' WHERE DocID = ? AND ID = ?")
            s\bind_values(cell.ID, v.ID)
            multi.exists[i] = s\step() == sqlite.ROW
            s\finalize()

        multi.checks = ffi.new("bool[?]", #multi.choices, multi.exists)
        searchstring = ""
        multi.show_all = true
        cell.initialised = true

    im.BeginChild_Str("multi_list", im.ImVec2_Float(0, -200*global.scale_p[0]), true)
    if im.InputText("Filtra", search, 100)
        searchstring = ffi.string(search)
    if im.Button(multi.show_all and "Mostra solo elementi selezionati" or "Mostra tutto", im.ImVec2_Float(-im.FLT_MIN, 0))
        multi.show_all = not multi.show_all
    for i, v in ipairs(multi.choices)
        if string.upper(v.Nome or "")\match(searchstring\upper())
            if multi.show_all or multi.checks[i - 1]
                im.Checkbox(v.Nome, multi.checks + i - 1)
    im.EndChild()

    if im.Button("Applica")
        db = global.database
        for i, v in ipairs(multi.choices)
            if multi.checks[i - 1]
                if not multi.exists[i]
                    s = db\prepare("INSERT INTO '#{parent.doc}' (DocID, ID) VALUES (?, ?)")
                    s\bind_values(cell.ID, v.ID)
                    s\step()
                    s\finalize()
            elseif multi.exists[i]
                s = db\prepare("DELETE FROM '#{parent.doc}' WHERE DocID = ? AND ID = ?")
                s\bind_values(cell.ID, v.ID)
                s\step()
                s\finalize()
            
            multi.exists[i] = multi.checks[i - 1]
        global.changed = true
        tab\update()



documenti_draw = (name) ->
    switch name
        when "Note", "Segnatura"
            draw_text()
        when "Data"
            draw_date()
        when "Tipo di documento", "Tipo di comunicazione", "Paese", "Luogo"
            draw_combo()
        when "Mittenti", "Destinatari", "Parole chiave"
            draw_multiple()
        else
            im.TextDisabled("Editor non impostato per questa cella.")

M.draw = ->
    tab = global.current_tab
    return if not global.current_tab

    cell = tab.cell_selected
    if not cell
        im.TextDisabled("Seleziona una cella per modificarla.")
        return

    switch tab.__class
        when tabs.other
            draw_text()
        when tabs.documenti
            documenti_draw(cell.name)

return M