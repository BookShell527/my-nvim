" Nvim color
au VimEnter * hi Normal guibg=NONE ctermbg=NONE
au VimEnter * hi EndOfBuffer guibg=NONE ctermbg=NONE
au VimEnter * hi SignColumn guibg=NONE ctermbg=NONE
au VimEnter * hi VertSplit guifg=fg guibg=bg

" Indent color
au VimEnter * hi IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine
au VimEnter * hi IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine
au VimEnter * hi IndentBlanklineIndent3 guifg=#98C379 gui=nocombine
au VimEnter * hi IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine
au VimEnter * hi IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine
au VimEnter * hi IndentBlanklineIndent6 guifg=#C678DD gui=nocombine

" Bufferline color
au VimEnter * hi BufferLineFill guibg=NONE
au VimEnter * hi BufferLineTab guibg=NONE guifg=fg
au VimEnter * hi BufferLineErrorDiagnostic guibg=NONE
au VimEnter * hi BufferLineDiagnostic guibg=NONE
au VimEnter * hi BufferLineInfo guibg=NONE guifg=fg
au VimEnter * hi BufferLineWarning guibg=NONE guifg=fg
au VimEnter * hi BufferLineWarningDiagnostic guibg=NONE guifg=fg
au VimEnter * hi BufferLineInfoDiagnostic guibg=NONE guifg=fg
au VimEnter * hi BufferLineError guibg=NONE guifg=fg
au VimEnter * hi BufferLineHint guibg=NONE guifg=fg
au VimEnter * hi BufferLineHintDiagnostic guibg=NONE guifg=fg
au VimEnter * hi BufferLineDuplicate guibg=NONE guifg=fg
au VimEnter * hi BufferLineBuffer guibg=NONE
au VimEnter * hi BufferLineTabClose guibg=NONE
au VimEnter * hi BufferLineCloseButton guibg=NONE
au VimEnter * hi BufferLineBackground guibg=NONE guifg=fg
au VimEnter * hi BufferLineSeparator guibg=NONE
au VimEnter * hi BufferLineModified guibg=NONE

" Lsp color
au VimEnter * hi DiagnosticVirtualTextError guifg=#E06C75 guibg=NONE
au VimEnter * hi DiagnosticVirtualTextWarn guifg=#E5C07B guibg=NONE
au VimEnter * hi DiagnosticVirtualTextHint guifg=#98C379 guibg=NONE
au VimEnter * hi DiagnosticVirtualTextInfo guifg=#C678DD guibg=NONE
au VimEnter * hi LspDiagnosticVirtualTextError guifg=#E06C75 guibg=NONE
au VimEnter * hi LspDiagnosticVirtualTextWarn guifg=#E5C07B guibg=NONE
au VimEnter * hi LspDiagnosticVirtualTextHint guifg=#98C379 guibg=NONE
au VimEnter * hi LspDiagnosticVirtualTextInfo guifg=#C678DD guibg=NONE
au VimEnter * hi FlutterNotificationNormal guibg=NONE

" Nvim tree color
au VimEnter * hi NvimTreeNormal guibg=NONE gui=nocombine
au VimEnter * hi NvimTreeEndOfBuffer guibg=NONE gui=nocombine
au VimEnter * hi NvimTreeVertSplit guifg=fg guibg=NONE gui=NONE
au FileType NvimTree setlocal winhighlight=Normal:NvimTreeNormal
au FileType NvimTree setlocal winhighlight=EndOfBuffer:NvimTreeEndOfBuffer
au FileType NvimTree setlocal winhighlight=VertSplit:NvimTreeVertSplit

" Completion color
au VimEnter * hi PMenu guibg=#282c34 guifg=fg
au VimEnter * hi CmpItemKindDefault guifg=#61afef

colorscheme onedark
