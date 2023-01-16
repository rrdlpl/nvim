local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	print("Nvim-tree not found!")
	return
end

-- Recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#f92672 ]])

nvimtree.setup({
	-- window splits
	view = {
		preserve_window_proportions = true,
		adaptive_size = true,
	},
	actions = {
		open_file = {
			resize_window = true,
			window_picker = {
				enable = false,
			},
		},
	},
})
