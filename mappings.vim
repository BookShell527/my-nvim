" Tabs navigation
nnoremap <C-w> :BDelete this<CR>
nnoremap L :BufferLineMoveNext<Cr>
nnoremap H :BufferLineMovePrev<Cr>
nnoremap K :BufferLineCycleNext<Cr>
nnoremap J :BufferLineCyclePrev<Cr>

" Nvim tree
nnoremap <C-e> :NvimTreeToggle<CR>

" Window navigation
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h

" Find files using Telescope command-line sugar.
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>

" Lsp
nnoremap gD 				:lua vim.lsp.buf.declaration()<CR>
nnoremap gd 				:lua vim.lsp.buf.definition()<CR>
nnoremap Z 					:lua vim.lsp.buf.hover()<CR>
nnoremap gi 				:lua vim.lsp.buf.implementation()<CR>
nnoremap D					:lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap gr 				:lua vim.lsp.buf.references()<CR>
nnoremap ge					:lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>fm	:lua vim.lsp.buf.formatting()<CR>

" Others
nnoremap + 								<C-a>
nnoremap - 								<C-x>
nnoremap <leader><leader> :noh<CR>
inoremap jk 							<Esc>
