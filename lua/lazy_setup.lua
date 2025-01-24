local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- LSP
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

    -- Manage LSP installation from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    'aspeddro/gitui.nvim', -- GitUI
    'Mofiqul/vscode.nvim', -- VSCode Dark theme
    'nvim-tree/nvim-web-devicons', -- icons
    'nvim-treesitter/nvim-treesitter', -- syntax highlighting
    'tpope/vim-commentary', -- easier comments
    -- 'xiyaowong/transparent.nvim', -- transparent background (not needed for VSCode theme)
    'kylechui/nvim-surround',
    {'trstringer/psql.nvim'},
    {
        'nvim-telescope/telescope.nvim', -- file searching
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'nvim-lualine/lualine.nvim', -- statusline
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    'm4xshen/autoclose.nvim' -- autoclose brackets
})

