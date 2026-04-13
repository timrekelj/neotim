-- Map Ctrl+c to Esc
vim.keymap.set('i', '<C-c>', '<Esc>', { nowait = true })

-- Center cursor after moving up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Create new line without entering insert
vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")

-- copy items to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Copy and paste from clipboard
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')

-- Move through tabs
vim.keymap.set('n', '<Tab>', ':tabnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>')

