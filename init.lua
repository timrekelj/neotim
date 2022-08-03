-- Plugin manager and plugin installation
require('packer_init')

-- Core settings
require('core.options')
require('core.keymaps')

-- Plugin connfigurations
require('plugins.alpha')
require('plugins.indent_blankline')
require('plugins.nvim-cmp')
require('plugins.nvim-lspconfig')
require('plugins.nvim-treesitter')
require('plugins.telescope')
