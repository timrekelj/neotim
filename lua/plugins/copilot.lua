vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-M>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

vim.api.nvim_create_user_command('CopilotToggle', function ()
    vim.g.copilot_enabled = not vim.g.copilot_enabled
    if vim.g.copilot_enabled then
        vim.cmd('Copilot disable')
    else
        vim.cmd('Copilot enable')
    end
end, {nargs = 0})

vim.keymap.set('n', '<leader>tc', ':CopilotToggle<CR>', { noremap = true, silent = true })

