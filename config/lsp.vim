lua << EOF

local lsp_installer = require "nvim-lsp-installer"
lsp_installer.on_server_ready(function(server)
  local opt = {}
  server:setup(opt)
  vim.cmd [[ do User LspAttachBuffers ]]
end)

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

EOF
