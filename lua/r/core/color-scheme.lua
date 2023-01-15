local status, monokai = pcall(require, "monokai")
if not status then
	print("Color scheme not found!")
	return
end

local palette = monokai.soda
monokai.setup({
	palette = require("monokai").soda,
	custom_hlgroups = {
		CursorLineNr = {
			fg = palette.pink,
			bg = palette.base2,
		},
	},
})
