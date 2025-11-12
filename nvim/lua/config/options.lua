-- Set termguicolors to enable 24-bit RGB colors
vim.o.termguicolors = true

-- Enable relative line numbers
vim.wo.relativenumber = true
vim.opt.number = true

-- infinite undo
vim.opt.undofile = true

-- case-insensitive search/replace
vim.opt.ignorecase = true
-- unless uppercase in search term
vim.opt.smartcase = true