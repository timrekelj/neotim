-- File manager
vim.keymap.set('n', '<leader>fv', vim.cmd.Ex)

-- Move when highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append bottom line to current and keep cursor in same position
vim.keymap.set("n", "J", "mzJ`z")

-- Move with cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

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
vim.keymap.set('v', '<leader>l', '\"_dP')
