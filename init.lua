-- Plugin manager and plugin installation
require('lazy_setup')

-- Core settings
require('core.options')
require('core.keybindings')

-- Plugin configurations
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.lsp')
require('plugins.commentary')
require('plugins.lualine')
require('plugins.autoclose')
require('plugins.theme')
