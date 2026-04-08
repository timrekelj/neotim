return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {},
      automatic_enable = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- Keymaps on LSP attach
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local buf = args.buf
          local map = function(mode, lhs, rhs)
            vim.keymap.set(mode, lhs, rhs, { buffer = buf, silent = true })
          end

          map("n", "gd", vim.lsp.buf.definition)
          map("n", "gD", vim.lsp.buf.declaration)
          map("n", "gr", vim.lsp.buf.references)
          map("n", "gi", vim.lsp.buf.implementation)
          map("n", "K", vim.lsp.buf.hover)
          map("n", "<leader>rn", vim.lsp.buf.rename)
          map("n", "<leader>ca", vim.lsp.buf.code_action)
          map("n", "<leader>e", vim.diagnostic.open_float)
          map("n", "[d", vim.diagnostic.goto_prev)
          map("n", "]d", vim.diagnostic.goto_next)

          vim.lsp.completion.enable(true, args.data.client_id, buf, { autotrigger = true })
        end,
      })
    end,
  },
}
