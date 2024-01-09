local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local term = require('harpoon.term')

require('harpoon').setup({
    global_settings = {
        enter_on_sendcmd = true,
    },
})

vim.keymap.set('n', '<leader>ha', mark.add_file)
vim.keymap.set('n', '<leader>ho', ui.toggle_quick_menu)
vim.keymap.set('n', '<leader>hc', function() require('harpoon.cmd-ui').toggle_quick_menu() end)

-- goto files in harpoon
vim.keymap.set('n', '<leader>jj', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>jk', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>jl', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>j;', function() ui.nav_file(4) end)

-- goto terminals in harpoon
vim.keymap.set('n', '<leader>jJ', function() term.gotoTerminal(1) end)
vim.keymap.set('n', '<leader>jK', function() term.gotoTerminal(2) end)
vim.keymap.set('n', '<leader>jL', function() term.gotoTerminal(3) end)
