-- Plugin manager and plugin installation
require('packer_init')

-- Core settings
require('core.options')
require('core.keymaps')
require('core.commands')

-- Plugin configurations
require('plugins.nvim-treesitter')
require('plugins.telescope')
require('plugins.harpoon')
require('plugins.lsp')
require('plugins.commentary')
require('plugins.vscode')
require('plugins.surround')
require('plugins.copilot')

