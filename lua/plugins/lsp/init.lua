local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("lua.plugins.lsp.lsp-installer")
require("lua.plugins.lsp.handlers").setup()
require("lua.plugins.lsp.null-ls")
