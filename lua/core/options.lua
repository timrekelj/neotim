-- Basics
vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = linebreak
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 4
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'
vim.opt.guifont = { "Cascadia Code", ":h11" }
vim.opt.guicursor = {}

-- 0.8.0 features
vim.o.ls = 0
vim.o.ch = 0
vim.o.winbar = '%f'

-- Set theme
vim.o.background = 'dark'
vim.cmd([[colorscheme shades_of_purple]])

vim.cmd([[set clipboard+=unnamedplus]])
