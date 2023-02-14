-- File manager
vim.keymap.set('n', '<leader>fv', vim.cmd.Ex)

-- Move when highlighted

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Split screen
vim.keymap.set('n', '<leader>E', ':vs<CR>')
vim.keymap.set('n', '<leader>O', ':sp<CR>')

-- Move through different splits
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')

-- Tab management
vim.keymap.set('n', 'tn', ':tabnew<CR>')
vim.keymap.set('n', 'tk', ':tabnext<CR>')
vim.keymap.set('n', 'tj', ':tabprev<CR>')
vim.keymap.set('n', 'to', ':tabo<CR>')

-- Search and replace
vim.keymap.set('n', '<leader>S', ':%s/')

-- Reload configuration without restart nvim
vim.keymap.set('n', '<leader>r', ':so %<CR>')

-- Trouble toggle
vim.keymap.set('n', '<leader>T', ':TroubleToggle document_diagnostics<CR>')

-- Delete without sending deleted stuff to register
vim.keymap.set('v', '<leader>l', '\"_dP')
