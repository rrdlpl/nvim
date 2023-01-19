vim.g.mapleader = " "

local keymap = vim.keymap -- for conciness
-- general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move stuff in selection mode
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<C-d>", "<C-d>zz") -- Keeps screen centered while jumping down
keymap.set("n", "<C-u>", "<C-u>zz") -- Keeps screen centered while jumping up

keymap.set("n", "n", "nzzzv") -- Keeps screen centered while searching
keymap.set("n", "N", "Nzzzv")

-- Allows to copy in system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- String replace

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>sv", "<C-w>v") -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- Split window vertically
keymap.set("n", "<leader>se", "<C-w>=") -- Split window vertically
keymap.set("n", "<leader>sx", ":close<CR>") -- Split window vertically

keymap.set("n", "<leader>to", ":tabnew<CR>") --open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close new tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- Plugins
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>.", ":NvimTreeFindFileToggle<CR>")

local telescope = require("telescope.builtin")
keymap.set("n", "<leader>ff", telescope.find_files, {})
keymap.set("n", "<C-p>", telescope.git_files, {})
keymap.set("n", "<leader>fs", telescope.live_grep, {})
keymap.set("n", "<leader>tm", ":Telescope harpoon marks<CR>")
keymap.set("n", "<leader>fp", function()
	telescope.grep_string({
		search = vim.fn.input("Grep >"),
	})
end)
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
