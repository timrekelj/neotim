-- Split screen
vim.api.nvim_set_keymap('n', '<leader>E', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>O', ':sp<CR>', { noremap = true })

-- Move through different splits
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })

-- Tab management
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tk', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tj', ':tabprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', { noremap = true })

-- Search and replace
vim.api.nvim_set_keymap('n', '<leader>S', ':%s/', { noremap = true })

-- Open and close terminal
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {})

-- Reload configuration without restart nvim
vim.api.nvim_set_keymap('n', '<leader>r', ':so %<CR>', { noremap = true })

-- Close all windows and exit from Neovim with <leader> and q
vim.api.nvim_set_keymap('n', '<leader>q', ':qa!<CR>', { noremap = true })

-- Trouble toggle
vim.api.nvim_set_keymap('n', '<leader>T', ':TroubleToggle<CR>', { noremap = true })
