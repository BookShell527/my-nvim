local lspconfig = require("lspconfig")
local cmd = vim.api.nvim_command

local on_attach = function(client, _)
	if client.resolved_capabilities.document_formatting then
		cmd [[augroup Format]]
		cmd [[autocmd! * <buffer> ]]
		cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 100) ]]
		cmd [[augroup END]]
	end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
	"html",
	"cssls",
	"pyright",
	"vimls",
	"tsserver",
	"sumneko_lua",
	"svelte",
	"rust_analyzer",
	"vuels",
	"texlab",
	"yamlls",
	"gopls",
}

for _, i in ipairs(servers) do
  lspconfig[i].setup { on_attach = on_attach, capabilities = capabilities }
end

require("flutter-tools").setup({
	lsp = { on_attach = on_attach }
})
