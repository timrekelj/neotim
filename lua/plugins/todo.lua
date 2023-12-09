require("todo-comments").setup()

vim.api.nvim_set_keymap("n", "<leader>ta", ':TodoTelescope<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>T", ':TodoTelescope keywords=TODO<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tf", ':TodoTelescope keywords=FIX,FIXME,BUG,FIXIT,ISSUE<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>th", ':TodoTelescope keywords=HACK<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tp", ':TodoTelescope keywords=PERF,OPTIM,PERFORMANCE,OPTIMIZE<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tn", ':TodoTelescope keywords=NOTE,INFO<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tw", ':TodoTelescope keywords=WARN,WARNING,XXX<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tt", ':TodoTelescope keywords=TEST,TESTING,PASSED,FAILED<CR>', { noremap = true, silent = true })

