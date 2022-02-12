path = (...)\gsub(".init$", "") .. "."

global = require "global"
settings = require "settings"
sqlite = require "lsqlite3complete"

nofile_error = "Trascina il file del database nella finestra per cominciare. "

local newfilename

M = {}

M.filedropped = (file) ->
    if global.error and global.error ~= nofile_error then return
    global.error = nil
    filename = file\getFilename()
    if love.system.getOS() == "Windows"
        filename = filename\gsub("\\","/")
    M.open_file(filename)

M.open_file = (filename) ->
    newfilename = filename
    if global.changed
        global.signals.load = true
    else
        M.load()

M.program_load = ->
    if latest = settings.t.recent
        M.open_file(latest)
        return if not global.error   
    global.error = nofile_error

M.save = ->
    if db = global.file_database
        success = false
        b = sqlite.backup_init(db, "main", global.database, "main")
        if b
            success = b\step(-1) == sqlite.DONE
            success = b\finish() == sqlite.OK
        
        if success
            global.changed = false
            return true
        else
            global.error = "Could not open the file for writing."
            return false
        
M.load = ->
    db = sqlite.open(newfilename, sqlite.OPEN_READWRITE)
    if not db or db\exec("SELECT COUNT(ID) from 'Documenti'") ~= sqlite.OK
        global.error = "File non valido o non accessibile."

    else
        global.file_database = db
        global.database = sqlite.open_memory()
        b = sqlite.backup_init(global.database, "main", db, "main")
        b\step(-1)
        b\finish()

        settings\add_filename(newfilename)      
        global.changed = false
        global.refresh_tabs = true
        return true


return M