local status_ok, _ = pcall(require, "lspconfig")

if not status_ok then
	return
end

require("ha55ehh.lsp.lsp-installer")
require("ha55ehh.lsp.handlers").setup()
