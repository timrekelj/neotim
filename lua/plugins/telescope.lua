local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-S-F>', builtin.live_grep, {})
vim.keymap.set('n', '<C-B>', builtin.buffers, {})
vim.keymap.set('n', '<C-A>', builtin.help_tags, {})

local telescope = require('telescope')

local actions = require("telescope.actions")
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<CR>"] = actions.select_tab,
      },
    }
  }
}

