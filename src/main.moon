local im

love.load = () ->
    -- add the source base directory to package.cpath to accees shared libraries from there 
    base_dir = love.filesystem.getSourceBaseDirectory()
    package.cpath = string.format("%s/?.%s;%s", base_dir, "dylib", package.cpath)
    package.cpath = string.format("%s/?.%s;%s", base_dir, "so", package.cpath)

    require "settings"
    im = require "cimgui"
    im.love.Init()

    require "input"
    require "draw"
    require "update"
    serialization = require "serialization"
    serialization.program_load()

love.quit = ->
    global = require "global"

    if global.modal_open
        return true

    if global.changed
        global.signals.quit = true
        return true
        
    else
        im.love.Shutdown()
        if db = global.file_database
            db\close()
            global.database\close()
        return false
