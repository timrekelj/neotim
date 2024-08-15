-- Map Ctrl+c to Esc
vim.keymap.set('i', '<C-c>', '<Esc>')

-- File manager
vim.keymap.set('n', '<leader>fm', vim.cmd.Ex)
vim.keymap.set('n', '<leader>fM', function()
    vim.cmd("vsplit")
    vim.cmd.Ex()
end)

-- Create new line without entering insert
vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")

-- copy items to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Rename word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Search and replace
vim.keymap.set('n', '<leader>S', ':%s/')

-- Delete without sending deleted stuff to register
vim.keymap.set('v', '<leader>p', '\"_dP')

-- Copy and paste from clipboard
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')

-- Use Alt + h/j/k/l to move in insert mode instead of arrow keys
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<Right>')

vim.keymap.set('t', '<C-[>', '<C-\\><C-N>') -- exit terminal mode

-- Use Ctrl + h/j/k/l to move through split windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-j>', '<C-w>j')

-- Use Ctrl + Shift + h/j/k/l to resize split windows
vim.keymap.set('n', '<C-M-h>', ':vertical resize -5<CR>')
vim.keymap.set('n', '<C-M-l>', ':vertical resize +5<CR>')
vim.keymap.set('n', '<C-M-k>', ':resize -5<CR>')
vim.keymap.set('n', '<C-M-j>', ':resize +5<CR>')

-- Move through tabs
vim.keymap.set('n', '<Tab>', ':tabnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>')
