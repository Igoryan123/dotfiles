local handlers = require("dlvhdr.lsp.handlers")
local lspconfig = require("lspconfig")
local opts = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}

lspconfig.denols.setup({
  on_attach = opts.on_attach,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
})
lspconfig.html.setup(opts)
require("dlvhdr.lsp.servers.tsserver").setup(opts)
require("dlvhdr.lsp.servers.jsonls").setup(opts)
require("dlvhdr.lsp.servers.null-ls").setup(opts)
require("dlvhdr.lsp.servers.gopls").setup(opts)
require("dlvhdr.lsp.servers.sumneko-lua").setup(opts)
require("dlvhdr.lsp.servers.emmet-ls").setup(opts)
