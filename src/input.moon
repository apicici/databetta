global = require "global"
im = require "cimgui"
serialization = require "serialization"
settings = require "settings"
text_editor = require "text_editor"

love.mousepressed = (...) ->
	x, y, button = ...
	im.love.MousePressed(button)
    if im.love.GetWantCaptureMouse() then return

love.mousereleased = (...) ->
	x, y, button = ...
    im.love.MouseReleased(button)
    if im.love.GetWantCaptureMouse() then return

love.mousemoved = (...) ->
	x, y, dx, dy = ...
	im.love.MouseMoved(x, y)
	if im.love.GetWantCaptureMouse() then return

love.wheelmoved = (x, y) ->
    im.love.WheelMoved(x, y)
    if im.love.GetWantCaptureMouse() then return

love.keypressed = (key, scancode, isrepeat) ->
    if global.error and key == "return"
        global.error = nil
        return
    if text_editor\is_active()
        text_editor\keypressed(key, isrepeat)

    im.love.KeyPressed(key) if not isrepeat
    if not im.love.GetWantCaptureKeyboard()
        im.love.RunShortcuts(key)

love.keyreleased = (key) ->
    im.love.KeyReleased(key)
    if im.love.GetWantCaptureKeyboard() then return
	
love.textinput = (t) ->
    if text_editor\is_active()
        text_editor\textinput(t)
    im.love.TextInput(t)
    if im.love.GetWantCaptureKeyboard() then return

love.filedropped = (file) ->
    serialization.filedropped(file)

love.resize = (...) ->
    settings\resize(...)