-----------------------------------------------------------
-- Portable package manager configuration file
-----------------------------------------------------------

-- Plugin: mason and mason-lspconfig
-- url: https://github.com/williamboman/mason.nvim
-- url: https://github.com/williamboman/mason-lspconfig.nvim

local status_ok, mason = pcall(require, 'mason')
if not status_ok then
    return
end

local status_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not status_ok then
    return
end

mason.setup()
mason_lspconfig.setup({
    ensure_installed = {
        "sumneko_lua",
        "rust_analyzer",
        "bashls",
        "ansiblels",
        "cssls",
        "dockerls",
        "eslint",
        "html",
        "jsonls",
        "marksman",
        "pyright",
        "svelte",
        "yamlls",
        "vuels",
        "tsserver"
    }
})

mason_lspconfig.setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = require("other/shared").on_attach,
        }
    end
})