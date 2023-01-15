
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
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})
