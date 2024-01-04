require("todo-comments").setup()

vim.keymap.set("n", "<leader>ta", ':TodoTelescope<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>T", ':TodoTelescope keywords=TODO<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tf", ':TodoTelescope keywords=FIX,FIXME,BUG,FIXIT,ISSUE<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>th", ':TodoTelescope keywords=HACK<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tp", ':TodoTelescope keywords=PERF,OPTIM,PERFORMANCE,OPTIMIZE<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tn", ':TodoTelescope keywords=NOTE,INFO<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tw", ':TodoTelescope keywords=WARN,WARNING,XXX<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tt", ':TodoTelescope keywords=TEST,TESTING,PASSED,FAILED<CR>', { noremap = true, silent = true })

