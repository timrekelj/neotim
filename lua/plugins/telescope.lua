local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-N>', builtin.find_files, {})
vim.keymap.set('n', '<C-F>', builtin.live_grep, {})
vim.keymap.set('n', '<C-B>', builtin.buffers, {})
vim.keymap.set('n', '<C-A>', builtin.help_tags, {})
