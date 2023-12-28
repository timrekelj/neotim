-- File manager
vim.keymap.set('n', '<leader>fv', vim.cmd.Ex)

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

-- Use Alt + h/j/k/l to move in insert mode instead of arrow keys
vim.keymap.set('i', '<A-h>', '<Left>')
vim.keymap.set('i', '<A-j>', '<Down>')
vim.keymap.set('i', '<A-k>', '<Up>')
vim.keymap.set('i', '<A-l>', '<Right>')

-- Use Ctrl + h/j/k/l to move through split windows
vim.keymap.set('n', '<S-M-h>', '<C-w>h')
vim.keymap.set('n', '<S-M-l>', '<C-w>l')
vim.keymap.set('n', '<S-M-k>', '<C-w>k')
vim.keymap.set('n', '<S-M-j>', '<C-w>j')

-- Open keybindings file
vim.keymap.set('n', '<leader>fk', ':lua Open_keybindings()<CR>', { noremap = true, silent = true })

function Open_keybindings()
  vim.cmd[[
    vertical new
    setlocal buftype=nofile
    setlocal bufhidden=hide
    setlocal noswapfile
    setlocal nobuflisted
    setlocal nowrap
    edit ~/.config/nvim/docs/keybindings.md
    setlocal nomodifiable
    nnoremap <buffer> q :q<CR>
  ]]
end
