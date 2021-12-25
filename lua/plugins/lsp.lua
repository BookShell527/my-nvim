local lspconfig = require("lspconfig")
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
	lspconfig[i].setup { on_attach = function (_, _) end, capabilities = capabilities }
end
