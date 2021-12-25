local packer = require("packer")

packer.init({
	display = {
		open_fn = require("packer.util").float,
		show_all_info = true,
		prompt_border = 'double',
	}
})
packer.reset()
packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'navarasu/onedark.nvim'
	use 'cohama/lexima.vim'
	use 'rafamadriz/friendly-snippets'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'saadparwaiz1/cmp_luasnip'
	use	'neovim/nvim-lspconfig'
	use {
		'hrsh7th/nvim-cmp',
		after = "friendly-snippets",
		config = require("plugins.completion")
	}
	use {
		'akinsho/flutter-tools.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = require("flutter-tools").setup()
	}
	use {
		'L3MON4D3/LuaSnip',
		wants = "friendly-snippets",
		after = "nvim-cmp",
		config = function ()
			require("luasnip").filetype_extend("dart", {"flutter"})
			require("luasnip/loaders/from_vscode").lazy_load()
		end
	}
	use {
		'onsails/lspkind-nvim',
		config = require("plugins.lspicon")
	}
	use {
		'kyazdani42/nvim-tree.lua',
		config = require("plugins.nvim_tree")
	}
	use {
		'nvim-lualine/lualine.nvim',
		config = require("plugins.lualine")
	}
	use {
		'akinsho/bufferline.nvim',
		config = require("plugins.bufferline")
	}
	use {
		'kazhala/close-buffers.nvim',
		config = require("close_buffers").setup()
	}
	use {
		'nvim-telescope/telescope.nvim',
		config = require("telescope").setup()
	}
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = require("plugins.indent_highlight")
	}
	use {
		'norcalli/nvim-colorizer.lua',
		config = require("plugins.colorizer")
	}
	use {
		'mattn/emmet-vim',
		config = vim.cmd "let g:user_emmet_leader_key='<C-q>'"
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = require("plugins.treesitter")
	}
	use {
		'lewis6991/gitsigns.nvim',
		config = require("gitsigns").setup()
	}
end)
