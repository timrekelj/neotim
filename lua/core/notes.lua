local notes_dir = vim.fs.normalize("~/Development/notes")

vim.keymap.set("n", "<leader>n", function()
  require("telescope").extensions.file_browser.file_browser({ path = notes_dir })
end, { desc = "Browse notes" })
