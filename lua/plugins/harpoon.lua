local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<leader>fh', ui.toggle_quick_menu)

vim.keymap.set('n', '<leader>jj', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>jk', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>jl', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>j;', function() ui.nav_file(4) end)
