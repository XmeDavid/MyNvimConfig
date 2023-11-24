local lsp = require("lsp-zero")

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	'eslint',
	'tsserver',
	'rust_analyzer',
  },
  handlers = {
    lsp.default_setup,
  },
})

lsp.setup()
