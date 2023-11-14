-- Basics
vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 8
vim.o.errorbells = false
vim.o.shiftwidth = 4
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'
vim.opt.guicursor = {}
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- 0.8.0 features
vim.o.ls = 0
vim.o.ch = 0
vim.o.winbar = '%f'

-- Set theme
-- vim.cmd([[colorscheme onedark]])
-- vim.api.nvim_set_hl(0, 'Normal', { bg = "none" })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = "none" })
