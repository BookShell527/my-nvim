local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'kazhala/close-buffers.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'navarasu/onedark.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'cohama/lexima.vim'

Plug 'mattn/emmet-vim'
Plug 'akinsho/flutter-tools.nvim'

Plug('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'rafamadriz/friendly-snippets'
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

vim.call('plug#end')
