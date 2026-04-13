return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>e",
        function()
          require("telescope").extensions.file_browser.file_browser({ path = vim.uv.cwd() })
        end,
        desc = "File browser (project root)",
      },
      {
        "<leader>E",
        function()
          require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", select_buffer = true })
        end,
        desc = "File browser (current file dir)",
      },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          file_browser = {
            grouped = true,
            hidden = { file_browser = true, folder_browser = true },
            respect_gitignore = false,
            hijack_netrw = true,
          },
        },
      })
      require("telescope").load_extension("file_browser")
    end,
  },
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
