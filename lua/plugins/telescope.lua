local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.load_extension('project')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.api.nvim_set_keymap('n', '<leader>fp', ":lua require'telescope'.extensions.project.project{}<CR>", {noremap = true, silent = true})
