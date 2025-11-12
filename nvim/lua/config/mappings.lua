local map = vim.keymap.set

-- Leader key
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

-- Keep cursor centered while navigating
map("n", "<C-u>", "<C-u>zz", {noremap = true})
map("n", "<C-d>", "<C-d>zz", {noremap = true})
map("n", "%", "%zz", {noremap = true})
map("n", "n", "nzz", {noremap = true})
map("n", "N", "Nzz", {noremap = true})


-- LSP
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

