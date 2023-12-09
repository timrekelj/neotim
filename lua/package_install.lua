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
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            'neovim/nvim-lspconfig',             -- Required
            'williamboman/mason.nvim',           -- Optional
            'williamboman/mason-lspconfig.nvim', -- Optional

            -- Autocompletion
            'hrsh7th/nvim-cmp',         -- Required
            'hrsh7th/cmp-nvim-lsp',     -- Required
            'hrsh7th/cmp-buffer',       -- Optional
            'hrsh7th/cmp-path',         -- Optional
            'saadparwaiz1/cmp_luasnip', -- Optional
            'hrsh7th/cmp-nvim-lua',     -- Optional

            -- Snippets
            'L3MON4D3/LuaSnip',             -- Required
            'rafamadriz/friendly-snippets', -- Optional
        }
    },
    { 'catppuccin/nvim', as = 'catppuccin' },
    'nvim-tree/nvim-web-devicons', -- icons
    'nvim-treesitter/nvim-treesitter', -- syntax highlighting
    'tpope/vim-commentary', -- easier comments
    {
        'nvim-telescope/telescope.nvim', -- file searching
        dependencies = { 'nvim-lua/plenary.nvim' } 
    },
    'kylechui/nvim-surround', -- surround text
    'theprimeagen/harpoon', -- quick file navigation
    'github/copilot.vim', -- github copilot
    'folke/todo-comments.nvim', -- todo comments
    'nvim-telescope/telescope-project.nvim'
})

