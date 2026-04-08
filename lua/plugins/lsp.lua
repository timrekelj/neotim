return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")

      vim.keymap.set("n", "gl", vim.diagnostic.open_float)
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

      vim.api.nvim_create_autocmd("LspAttach", {
        desc = "LSP actions",
        callback = function(event)
          local opts = { buffer = event.buf }

          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
          vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
          vim.keymap.set({ "n", "x" }, "<F3>", function()
            vim.lsp.buf.format({ async = true })
          end, opts)
          vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action, opts)
        end,
      })

      vim.api.nvim_create_autocmd("CursorHold", {
        desc = "Show diagnostics under cursor",
        callback = function()
          if vim.api.nvim_get_mode().mode ~= "n" then
            return
          end

          vim.diagnostic.open_float(nil, {
            focusable = false,
            scope = "line",
            close_events = {
              "CursorMoved",
              "CursorMovedI",
              "BufHidden",
              "InsertCharPre",
              "WinLeave",
            },
          })
        end,
      })

      local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

      local deno_root = util.root_pattern(
        "deno.json",
        "deno.jsonc",
        "import_map.json",
        "supabase/config.toml"
      )

      local ts_root = util.root_pattern(
        "package.json",
        "tsconfig.json",
        "jsconfig.json",
        ".git"
      )

      require("mason").setup({})
      require("mason-lspconfig").setup({
        ensure_installed = { "ts_ls", "denols" },
        handlers = {
          function(server)
            lspconfig[server].setup({
              capabilities = lsp_capabilities,
            })
          end,
          ["denols"] = function()
            lspconfig.denols.setup({
              capabilities = lsp_capabilities,
              root_dir = deno_root,
            })
          end,
          ["ts_ls"] = function()
            lspconfig.ts_ls.setup({
              capabilities = lsp_capabilities,
              root_dir = function(fname)
                if deno_root(fname) then
                  return nil
                end

                return ts_root(fname)
              end,
              single_file_support = false,
            })
          end,
        },
      })

      vim.diagnostic.config({
        virtual_text = false,
        float = {
          border = "rounded",
          source = "if_many",
        },
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = false }),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = true,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = true,
  },
  {
    "L3MON4D3/LuaSnip",
    lazy = true,
  },
}
