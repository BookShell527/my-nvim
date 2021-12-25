require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "vim", "dart", "typescript", "javascript", "html", "css", "tsx", "rust", "python" },
  highlight = { enable = true, use_languagetree = true },
})
