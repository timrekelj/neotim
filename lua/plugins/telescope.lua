-----------------------------------------------------------
-- File and other searching configuration file
-----------------------------------------------------------

-- Plugin: telescope
-- url: https://github.com/nvim-telescope/telescope.nvim

local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
    return
end

telescope.setup {
    pickers = {
        find_files = {
            hidden = true,
            theme = "dropdown",
            previewer = false,
        }
    },
    extensions = {
        file_browser = {
            theme = "ivy",
        }
    }
}

require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap('n', '<leader>p', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', ":Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>g', "<cmd>lua require('telescope.builtin').git_branches()<CR>", { noremap = true })
