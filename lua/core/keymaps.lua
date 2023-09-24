-- File manager
vim.keymap.set('n', '<leader>fv', vim.cmd.Ex)

-- Append bottom line to current and keep cursor in same position
vim.keymap.set("n", "J", "mzJ`z")

-- Move with cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Create new line without entering insert
vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")

-- copy items to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- ctrl + c instead of esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Rename word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Search and replace
vim.keymap.set('n', '<leader>S', ':%s/')

-- Delete without sending deleted stuff to register
vim.keymap.set('v', '<leader>p', '\"_dP')
