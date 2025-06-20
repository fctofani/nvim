vim.g.mapleader = " "

local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>v", "<CMD>vsplit<CR>")
map("n", "<leader>s", "<CMD>split<CR>")

-- Explorer
map("n", "<leader>pv", "<CMD>Ex<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>")
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>")
vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>")
vim.keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<cr>")

