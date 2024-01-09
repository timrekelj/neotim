require("todo-comments").setup()

vim.keymap.set("n", "<leader>ta", ':TodoTelescope<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tt", ':TodoTelescope keywords=TODO<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tb", ':TodoTelescope keywords=FIX,FIXME,BUG,FIXIT,ISSUE<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tw", ':TodoTelescope keywords=WARN,WARNING,XXX<CR>', { noremap = true, silent = true })

