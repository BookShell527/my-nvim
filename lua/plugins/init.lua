require("plugins.lsp")
require("plugins.completion")
require("plugins.lualine")

vim.opt.fillchars:append { eob = " " }
require("telescope").setup()
require("gitsigns").setup()
require('close_buffers').setup()

-- Indent Highlighting Configuration
require("indent_blankline").setup({
	space_char_blankline = " ",
  filetype_exclude = { "help", "lspinfo", "TelescopePrompt", "TelescopeResults" },
	char_highlight_list = { "IBI1", "IBI2", "IBI3", "IBI4", "IBI5", "IBI6" },
})

-- Tabs configuration
require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
		  local icon = level:match("error") and " " or " "
		  return " " .. icon .. count
		end,
		offsets = {
			{ filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "center" }
		},
	},
})

-- Color Highlighting Configuration
require("colorizer").setup(
  {"*";},
  {
    RGB      = true;
  	RRGGBB   = true;
    names    = true;
    RRGGBBAA = true;
    rgb_fn   = true;
    hsl_fn   = true;
    css      = true;
    css_fn   = true;
  }
)

-- Nvim Tree Configuration
require('nvim-tree').setup({auto_close = true, view = {width = 25}, diagnostics = {enable = true}})
