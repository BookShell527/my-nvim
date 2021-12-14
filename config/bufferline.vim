lua << EOF

require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
		  local icon = level:match("error") and " " or " "
		  return " " .. icon .. count
		end,
		offsets = {
			{
				filetype = "NvimTree", 
				text = "File Explorer", 
				highlight = "Directory",
				text_align = "center",
			}
		},
	},
})

require('close_buffers').setup({
  filetype_ignore = {},
  file_glob_ignore = {},
  file_regex_ignore = {},
  preserve_window_layout = { 'this', 'nameless' },
  next_buffer_cmd = nil,
})

EOF
