-- Plugin manager and plugin installation
require('packer_init')

-- Core settings
require('core.options')
require('core.keymaps')

-- Plugin connfigurations
require('plugins.nvim-treesitter')
require('plugins.telescope')
require('plugins.harpoon')
require('plugins.undotree')
require('plugins.fugitive')
require('plugins.lsp')
