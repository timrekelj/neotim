-- Basics
vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
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
vim.opt.guifont = { "JetBrainsMono Nerd Font", ":h11" }

-- 0.8.0 features
vim.o.ls = 0
vim.o.ch = 0
vim.o.winbar = '%f'

-- Set theme
vim.cmd([[colorscheme tokyonight]])

vim.cmd([[set clipboard+=unnamedplus]])
