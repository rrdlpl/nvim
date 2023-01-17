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
		["@constructor"] = {
			fg = palette.green,
		},
		["@number"] = {
			fg = palette.pink,
		},
		["@parameter"] = {
			fg = palette.orange,
		},
		["@punctuation.bracket"] = {
			fg = palette.purple,
		},
		["@type"] = {
			fg = palette.green,
		},
		["@type.builtin"] = {
			fg = palette.aqua,
		},
		["@type.qualifier"] = {
			fg = palette.pink,
		},
		["@green"] = {
			fg = palette.green,
		},
		["@aqua"] = {
			fg = palette.aqua,
		},
		["@pink"] = {
			fg = palette.pink,
		},
		["@purple"] = {
			fg = palette.purple,
		},
		["@orange"] = {
			fg = palette.orange,
		},
		["@white"] = {
			fg = palette.white,
		},
	},
})
