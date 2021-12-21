local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

g.mapleader = ' '
opt.relativenumber = true
opt.termguicolors = true
opt.number = true
opt.background ='dark'
opt.signcolumn ='yes'
opt.shell ='zsh'
opt.clipboard ='unnamedplus'
opt.showmode = false
opt.autoindent = true
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.ignorecase = true
opt.hlsearch = true
opt.smarttab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.completeopt = 'menu,menuone,noselect'

cmd [[
	set fillchars+=vert:\|
	set undodir=~/.vim/undodir
	filetype plugin indent on
	syntax on
	au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]]

opt.fillchars:append { eob = " " }
