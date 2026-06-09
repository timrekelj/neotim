local notes_dir = vim.fs.normalize("~/Development/notes")

vim.keymap.set("n", "<leader>n", function()
  vim.cmd("Explore " .. notes_dir)
end, { desc = "Browse notes" })
