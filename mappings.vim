" Tabs navigation
nnoremap <silent><C-w> :BDelete this<CR>
nnoremap <silent>L :BufferLineMoveNext<Cr>
nnoremap <silent>H :BufferLineMovePrev<Cr>
nnoremap <silent>K :BufferLineCycleNext<Cr>
nnoremap <silent>J :BufferLineCyclePrev<Cr>

" Nvim tree
nnoremap <silent><C-e> :NvimTreeToggle<CR>

" Window navigation
nnoremap <silent><C-k> <C-w>k
nnoremap <silent><C-l> <C-w>l
nnoremap <silent><C-j> <C-w>j
nnoremap <silent><C-h> <C-w>h

" Find files using Telescope command-line sugar.
nnoremap <silent><leader>ff :Telescope find_files<cr>
nnoremap <silent><leader>fg :Telescope live_grep<cr>
nnoremap <silent><leader>fb :Telescope buffers<cr>
nnoremap <silent><leader>fh :Telescope help_tags<cr>

" Move a block of code
vnoremap <silent><C-j> :m '>+1<CR>gv=gv
vnoremap <silent><C-k> :m '<-2<CR>gv=gv

" Lsp
nnoremap <silent>gD 				:lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>gd 				:lua vim.lsp.buf.definition()<CR>
nnoremap <silent>Z 					:lua vim.lsp.buf.hover()<CR>
nnoremap <silent>gi 				:lua vim.lsp.buf.implementation()<CR>
nnoremap <silent>D					:lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent><leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <silent><leader>ca :Telescope lsp_code_actions<CR>
nnoremap <silent>gr 				:Telescope lsp_references<CR>
nnoremap <silent>ge					:lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent><leader>fm	:lua vim.lsp.buf.formatting()<CR>

" Others
nnoremap <silent><leader><leader> :noh<CR>
nnoremap <silent><C-n>						:Neogit kind=floating<CR>
nnoremap <silent>n 								nzzzv
nnoremap <silent>N 								Nzzzv
nnoremap <silent><leader>j				mzJ`z
