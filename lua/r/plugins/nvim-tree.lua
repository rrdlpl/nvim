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
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		show_on_open_dirs = true,
		debounce_delay = 50,
		severity = {
			min = vim.diagnostic.severity.HINT,
			max = vim.diagnostic.severity.ERROR,
		},
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	live_filter = {
		prefix = "[Filter]: ",
		always_show_folders = false,
	},
})
