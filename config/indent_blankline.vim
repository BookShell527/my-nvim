lua << EOF
require("indent_blankline").setup({
	space_char_blankline = " ",
  filetype_exclude = {
    "help",
    "terminal",
    "dashboard",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
  },
	char_highlight_list = {
	  "IndentBlanklineIndent1",
	  "IndentBlanklineIndent2",
	  "IndentBlanklineIndent3",
	  "IndentBlanklineIndent4",
	  "IndentBlanklineIndent5",
	  "IndentBlanklineIndent6",
	},
})
EOF
