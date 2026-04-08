return {
  "folke/todo-comments.nvim",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>t", "<cmd>TodoTelescope<CR>", desc = "Search todo comments" },
  },
  opts = {},
}
