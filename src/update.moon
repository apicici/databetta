im = require "cimgui"
global = require "global"

love.update = (dt) ->   
    im.love.Update(dt)
    im.NewFrame()