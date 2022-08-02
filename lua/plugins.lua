return require('packer').startup(function()
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Language server and extensions
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Reload nvim without exiting
  use 'famiu/nvim-reload'

  -- Themes
  use { "ellisonleao/gruvbox.nvim" }

  -- Automatic bracket pairing
  use {
  	"windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  -- Syntax highlihting
  use 'nvim-treesitter/nvim-treesitter' 

  -- Easier comments
  use 'tpope/vim-commentary'

  -- Better indents
  use 'lukas-reineke/indent-blankline.nvim'

  -- Searching
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
end)
