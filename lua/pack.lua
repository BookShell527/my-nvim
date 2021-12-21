local packer = require("packer")
local use = packer.use

packer.init()
packer.reset()
packer.startup(function()
	use 'wbthomason/packer.nvim'
	use 'kyazdani42/nvim-tree.lua'
	use 'kyazdani42/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 'akinsho/bufferline.nvim'
	use 'kazhala/close-buffers.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'navarasu/onedark.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'norcalli/nvim-colorizer.lua'
	use 'cohama/lexima.vim'
	use 'mattn/emmet-vim'
	use 'akinsho/flutter-tools.nvim'
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/plenary.nvim'
	use 'lewis6991/gitsigns.nvim'
	use 'rafamadriz/friendly-snippets'
	use 'L3MON4D3/LuaSnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use "hrsh7th/cmp-nvim-lua"
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'onsails/lspkind-nvim'
end)
