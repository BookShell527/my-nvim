local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)
	if client.resolved_capabilities.document_formatting then 
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer> ]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 100) ]]
		vim.api.nvim_command [[augroup END]]
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
	"vls",
	"gopls",
}

for _, i in ipairs(servers) do
  lspconfig[i].setup { on_attach = on_attach, capabilities = capabilities }
end

require("flutter-tools").setup({
	lsp = { on_attach = on_attach }
})

-- Treesitter Configuration
require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "vim" },
  highlight = { enable = true, use_languagetree = true },
})
