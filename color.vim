" Nvim color
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE
autocmd vimenter * hi SignColumn guibg=NONE ctermbg=NONE
autocmd vimenter * hi VertSplit guifg=fg guibg=bg

" Indent color
autocmd vimenter * hi IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine
autocmd vimenter * hi IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine
autocmd vimenter * hi IndentBlanklineIndent3 guifg=#98C379 gui=nocombine
autocmd vimenter * hi IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine
autocmd vimenter * hi IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine
autocmd vimenter * hi IndentBlanklineIndent6 guifg=#C678DD gui=nocombine

" Bufferline color
autocmd vimenter * hi BufferLineFill guibg=NONE
autocmd vimenter * hi BufferLineTab guibg=NONE guifg=fg
autocmd vimenter * hi BufferLineErrorDiagnostic guibg=NONE
autocmd vimenter * hi BufferLineDiagnostic guibg=NONE
autocmd vimenter * hi BufferLineInfo guibg=NONE guifg=fg
autocmd vimenter * hi BufferLineError guibg=NONE guifg=fg
autocmd vimenter * hi BufferLineBuffer guibg=NONE
autocmd vimenter * hi BufferLineTabClose guibg=NONE
autocmd vimenter * hi BufferLineCloseButton guibg=NONE
autocmd vimenter * hi BufferLineBackground guibg=NONE guifg=fg
autocmd vimenter * hi BufferLineSeparator guibg=NONE
autocmd vimenter * hi BufferLineModified guibg=NONE

" Lsp color
autocmd vimenter * hi DiagnosticVirtualTextError guifg=#E06C75 guibg=NONE
autocmd vimenter * hi DiagnosticVirtualTextWarn guifg=#E5C07B guibg=NONE
autocmd vimenter * hi DiagnosticVirtualTextHint guifg=#98C379 guibg=NONE
autocmd vimenter * hi DiagnosticVirtualTextInfo guifg=#C678DD guibg=NONE
autocmd vimenter * hi LspDiagnosticVirtualTextError guifg=#E06C75 guibg=NONE
autocmd vimenter * hi LspDiagnosticVirtualTextWarn guifg=#E5C07B guibg=NONE
autocmd vimenter * hi LspDiagnosticVirtualTextHint guifg=#98C379 guibg=NONE
autocmd vimenter * hi LspDiagnosticVirtualTextInfo guifg=#C678DD guibg=NONE

" Nvim tree color
autocmd vimenter * hi NvimTreeNormal guibg=NONE gui=nocombine
autocmd vimenter * hi NvimTreeEndOfBuffer guibg=NONE gui=nocombine
autocmd vimenter * hi NvimTreeVertSplit guifg=fg guibg=NONE gui=NONE
autocmd FileType NvimTree setlocal winhighlight=Normal:NvimTreeNormal
autocmd FileType NvimTree setlocal winhighlight=EndOfBuffer:NvimTreeEndOfBuffer
autocmd FileType NvimTree setlocal winhighlight=VertSplit:NvimTreeVertSplit

" Completion color
autocmd vimenter * hi PMenu guibg=#282c34 guifg=fg
autocmd vimenter * hi CmpItemKindDefault guifg=#61afef

colorscheme onedark
