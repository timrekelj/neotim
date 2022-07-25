return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'famiu/nvim-reload'
  use { "ellisonleao/gruvbox.nvim" }
  use {
  	"windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
  use 'nvim-treesitter/nvim-treesitter' 
  use 'tpope/vim-commentary'
  use 'lukas-reineke/indent-blankline.nvim'
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
