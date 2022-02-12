serpent = require "serpent"

M = {}

chunk, errormsg = love.filesystem.load("config.lua")
M.t = not errormsg and chunk() or {}

width, height = if window = M.t.window
	window.w, window.h
else
	800, 600

M.t.scale = type(M.t.scale) == "number" and math.floor(M.t.scale) or 1

M.t.editor_width = M.t.editor_width or 400

flags = {
	resizable: true
	centered: true
}

love.window.setMode(width, height, flags)
love.window.setTitle("databetta")

M.save = =>
	data = "return " .. serpent.block(@t, {comment:false})
	love.filesystem.write("config.lua", data)

M.add_filename = (filename) =>
	@t.recent = filename
	@save()

M.resize = (w, h) =>
	@t.window = {:w, :h, fullscreen:{love.window.getFullscreen()}}
	@save()

M.scale = (scale) =>
	@t.scale = scale
	@save()

M.editor_width = (new_width) =>
	@t.editor_width = new_width
	@save()
	
return M
