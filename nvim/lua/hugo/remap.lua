vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', "<leader>pv", ":bp | sp | bn | bd<CR>", { noremap = true, silent = true })

-- windows
vim.api.nvim_set_keymap('n', "<leader>wh", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "<leader>wl", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "<leader>wj", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "<leader>wk", "<C-w>k", { noremap = true, silent = true })

-- buffers
vim.api.nvim_set_keymap('n', "<leader>bh", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "<leader>bl", ":bnext<CR>", { noremap = true, silent = true })
