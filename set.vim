set relativenumber
set termguicolors
set number
set background=dark
set signcolumn=yes
set shell=zsh
set clipboard=unnamedplus
set noshowmode
set autoindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set ignorecase
set hlsearch
set smarttab
set shiftwidth=2
set tabstop=2
set fillchars+=vert:\|
set completeopt=menu,menuone,noselect

let mapleader = " "

filetype plugin indent on
syntax on

au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
