call plug#begin('~/.vim/plugged')

Plug 'wbthomason/packer.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'folke/which-key.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'kazhala/close-buffers.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'akinsho/flutter-tools.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'onsails/lspkind-nvim'

call plug#end()

" Plugin configuration
runtime ./config/treesitter.vim
runtime ./config/indent_blankline.vim
runtime ./config/nvimtree.vim
runtime ./config/colorizer.vim
runtime ./config/lualine.vim
runtime ./config/lsp.vim
runtime ./config/bufferline.vim
runtime ./config/telescope.vim
runtime ./config/which_key.vim
runtime ./config/completion.vim

lua << EOF

require("flutter-tools").setup()
require("telescope").setup()
require("gitsigns").setup()
require("luasnip").filetype_extend("dart", {"flutter"})

EOF
