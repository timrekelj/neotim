return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    keys = {
      {
        "<leader>f",
        function()
          require("telescope.builtin").find_files()
        end,
      },
      {
        "<leader>F",
        function()
          require("telescope.builtin").live_grep()
        end,
      },
      {
        "<leader>b",
        function()
          require("telescope.builtin").buffers()
        end,
      },
      {
        "<leader>a",
        function()
          require("telescope.builtin").help_tags()
        end,
      },
      {
        "<leader>d",
        function()
          require("telescope.builtin").diagnostics({ bufnr = 0 })
        end,
        desc = "File diagnostics",
      },
      {
        "<leader>D",
        function()
          require("telescope.builtin").diagnostics()
        end,
        desc = "Workspace diagnostics",
      },
    },
    opts = function()
      local actions = require("telescope.actions")

      return {
        defaults = {
          mappings = {
            i = {
              ["<CR>"] = actions.select_tab,
            },
          },
        },
      }
    end,
  },
}
