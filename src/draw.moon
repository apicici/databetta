im = require "cimgui"
global = require "global"
helpers = require "imgui_helpers"
serialization = require "serialization"
settings = require "settings"
tabs = require "tabs"
editor = require "editor"
ffi = require "ffi"

io = im.GetIO()

-- style
style = im.GetStyle()
style.FrameRounding = 4
style.WindowRounding = 0
style.WindowBorderSize = 0

-- scale
saved_style = im.ImGuiStyle()
ffi.copy(saved_style, style, ffi.sizeof("ImGuiStyle"))

rescale = (s) ->
    ffi.copy(style, saved_style, ffi.sizeof("ImGuiStyle"))
    style\ScaleAllSizes(s)
    settings\scale(s)

    io.Fonts\Clear()
    config = im.ImFontConfig()
    config.SizePixels = 13*s
    io.FontDefault = io.Fonts\AddFontDefault(config)
    im.love.BuildFontAtlas()

global.scale_p = ffi.new("int[1]", settings.t.scale)
scale_p = global.scale_p
rescale(scale_p[0])

windowflags = im.love.WindowFlags("NoTitleBar", "NoResize", "NoMove", "MenuBar")

tabs_list = {
    tabs.documenti()
    tabs.other("Tipi documento", "Tipo di documento", "Tipi di documento")
    tabs.other("Tipi comunicazione", "Tipo di comunicazione", "Tipi di comunicazione")
    tabs.other("Mittenti/destinatari", {"Doc - mittenti", "Doc - destinatari"}, "Mittenti/destinatari")
    tabs.other("Paesi", "Paese", "Paesi")
    tabs.other("Luoghi", "Luogo", "Luoghi")
    tabs.other("Parole chiave", {"Doc - chiave"}, "Parole chiave")
}

love.draw = ->
    rescale_needed = false
    file_loaded = not not global.database
    file_changed = not not global.changed

    modal_button_size = im.ImVec2_Float(60*scale_p[0], 0)
    w, h = love.graphics.getDimensions()

    -- display warning messages
    if err = global.error
        im.SetNextWindowPos(im.ImVec2_Float(w/2, h/2), nil, im.ImVec2_Float(0.5, 0.5))
        im.SetNextWindowSize(im.ImVec2_Float(500*scale_p[0], 0))
        im.OpenPopup_Str("Avviso")
        if im.BeginPopupModal("Avviso", nil, im.love.WindowFlags("AlwaysAutoResize", "NoCollapse"))
            im.TextWrapped(err)
            im.Spacing()
            im.Spacing()
            if helpers.color_button("OK", .2083, 1, modal_button_size)
                global.error = nil
            im.EndPopup()

    -- ask for confirmation before closing if there are unsaved changes
    if global.signals.quit
        im.SetNextWindowPos(im.ImVec2_Float(w/2, h/2), nil, im.ImVec2_Float(0.5, 0.5))
        im.SetNextWindowSize(im.ImVec2_Float(500*scale_p[0], 0))
        im.OpenPopup_Str("Avviso##quit")
        if im.BeginPopupModal("Avviso##quit", nil, im.love.WindowFlags("AlwaysAutoResize", "NoCollapse"))
            im.TextWrapped("Salvare le modifiche prima di chiudere?")
            im.Spacing()
            im.Spacing()
            if helpers.color_button("Salva", .2083, 1, modal_button_size)
                global.signals.quit = false
                if serialization.save()
                    love.event.quit()
            im.SameLine()
            if helpers.color_button("Annulla", .1389, 1)
                global.signals.quit = false
            im.SameLine()
            if helpers.color_button("Chiudi senza salvare", .0794, 1)
                global.changed = false
                love.event.quit()
            im.EndPopup()

    -- ask for confirmation before loading if there are unsaved changes
    if global.signals.load
        w, h = love.graphics.getDimensions()
        im.SetNextWindowPos(im.ImVec2_Float(w/2, h/2), nil, im.ImVec2_Float(0.5, 0.5))
        im.SetNextWindowSize(im.ImVec2_Float(500*scale_p[0], 0))
        im.OpenPopup_Str("Avviso##load")
        if im.BeginPopupModal("Avviso##load", nil, im.love.WindowFlags("AlwaysAutoResize", "NoCollapse"))
            im.TextWrapped("Salvare le modifiche prima di aprire un nuovo file?")
            im.Spacing()
            im.Spacing()
            if helpers.color_button("Salva", .2083, 1)
                global.signals.load = false
                if serialization.save()
                    serialization.load()
            im.SameLine()
            if helpers.color_button("Annulla", .1389, 1)
                global.signals.load = false
            im.SameLine()
            if helpers.color_button("Apri senza salvare", .0794, 1)
                global.signals.load = false
                serialization.load()
            im.EndPopup()

    action = ->
        if global.changed then serialization.save()

    save_shortcut = im.love.Shortcut({"gui"}, "s", action)

    im.SetNextWindowSize(im.ImVec2_Float(w, h))
    im.SetNextWindowPos(im.ImVec2_Nil())

    im.PushStyleColor_Vec4(im.ImGuiCol_MenuBarBg, im.ImVec4_Float(0.8,0.353,0.24,1)) if global.changed
    style_pushed = global.changed
    im.Begin("databetta", nil, windowflags)

    if im.BeginMenuBar()
        if im.BeginMenu("File")
            if im.MenuItem_Bool("Salva", save_shortcut.text, nil, global.changed or false)
                save_shortcut.action()
            im.EndMenu()
        if im.BeginMenu("Opzioni")
            if im.InputInt("Zoom", scale_p)
                if scale_p[0] < 1
                    scale_p[0] = 1
                else
                    rescale_needed = true
            im.EndMenu()
        im.EndMenuBar()

    if file_loaded
        w = settings.t.editor_width
        if im.BeginChild_Str("left", im.ImVec2_Float(-w*scale_p[0], 0))
            if im.BeginTabBar("Tabs")
                for _, t in ipairs(tabs_list)
                    t\draw()
    
            
                im.EndTabBar()
        im.EndChild()
        im.SameLine()
        im.Button("splitter", im.ImVec2_Float(2*scale_p[0], -1))
        if im.IsItemHovered()
            im.SetMouseCursor(im.ImGuiMouseCursor_ResizeEW)
        if im.IsItemActive()
            settings\editor_width(math.max(0, w - io.MouseDelta.x/scale_p[0]))
        im.SameLine()
        if im.BeginChild_Str("right")
            editor.draw()
        im.EndChild()

    im.End()
    im.PopStyleColor() if style_pushed

    im.Render()
    im.love.RenderDrawLists()

    rescale(scale_p[0]) if rescale_needed

