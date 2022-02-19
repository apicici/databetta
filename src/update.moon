im = require "cimgui"
global = require "global"
text_editor = require "text_editor"

love.update = (dt) ->
    im.love.Update(dt)
    im.NewFrame()
    text_editor\update(dt)