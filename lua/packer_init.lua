-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

-- Install plugins
return packer.startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- LSP
    -- LSP
    use { "neovim/nvim-lspconfig", commit = "148c99bd09b44cf3605151a06869f6b4d4c24455" } -- enable LSP
    use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" } -- simple to use language server installer
    use { "jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465" } -- for formatters and linters
    use { "RRethy/vim-illuminate", commit = "c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5" }    use { "folke/trouble.nvim",
        config = function()
            require("trouble").setup()
        end
    }

    -- CMP
    use { "hrsh7th/nvim-cmp", commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" } -- The completion plugin
    use { "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" } -- buffer completions
    use { "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" } -- path completions
    use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions
    use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" }
    use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }

    -- snippets
    use { "L3MON4D3/LuaSnip", commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a" } --snippet engine
    use { "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" } -- a bunch of snippets to use

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Autopair
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup {}
        end
    }

    -- Themes
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Syntax highlihting
    use 'nvim-treesitter/nvim-treesitter'

    -- Easier comments
    use 'tpope/vim-commentary'

    -- Better indents
    use 'lukas-reineke/indent-blankline.nvim'

    -- Searching
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {
        "ur4ltz/surround.nvim",
        config = function()
            require "surround".setup { mappings_style = "surround" }
        end
    }

    -- Dashboard (start screen)
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
    }
end)
