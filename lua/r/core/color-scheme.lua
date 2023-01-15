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

-- function ColorMyPencils(color)
-- 	color = color
--
-- 	vim.cmd.colorscheme(color)
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--end

-- ColorMyPencils()
