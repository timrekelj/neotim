-- Plugin manager and plugin installation
require('package_install')

-- Core settings
require('core.options')
require('core.keybindings')
require('core.commands')

-- Plugin configurations
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.harpoon')
require('plugins.lsp')
require('plugins.commentary')
require('plugins.surround')
require('plugins.copilot')
require('plugins.catppuccin')
require('plugins.todo')
