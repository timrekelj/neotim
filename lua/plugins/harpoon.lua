local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local term = require('harpoon.term')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<leader>fh', ui.toggle_quick_menu)

vim.keymap.set('n', '<leader>jj', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>jk', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>jl', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>j;', function() ui.nav_file(4) end)
vim.keymap.set('n', '<leader>kl', function() require('harpoon.cmd-ui').toggle_quick_menu() end)

vim.keymap.set('n', '<leader>kj', function() term.gotoTerminal(1) end)
vim.keymap.set('n', '<leader>kk', function() term.gotoTerminal(2) end)
vim.keymap.set('n', '<leader>kl', function() term.gotoTerminal(3) end)
