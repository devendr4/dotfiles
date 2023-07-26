return require('packer').startup(function(use)
	use {'krivahtoo/silicon.nvim', run = './install.sh'}
	use 'wbthomason/packer.nvim'
	use 'kyazdani42/nvim-tree.lua'
	use { 'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' } }
	use 'romgrk/barbar.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'

	use 'numToStr/Comment.nvim'
	--git
	use 'lewis6991/gitsigns.nvim'
	use 'tpope/vim-fugitive'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- themes
	use 'sainnhe/everforest'

	use 'norcalli/nvim-colorizer.lua'
	use 'phaazon/hop.nvim'

	--autopairs/tags
	use 'windwp/nvim-ts-autotag'
	use 'windwp/nvim-autopairs'
	-- use {'neoclide/coc.nvim', branch = 'release'}


	use 'karb94/neoscroll.nvim'
	use 'navarasu/onedark.nvim'

	use 'goolord/alpha-nvim'
	use 'Shatur/neovim-session-manager'

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{ 'williamboman/mason.nvim' }, -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-buffer' }, -- Optional
			{ 'hrsh7th/cmp-path' }, -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'hrsh7th/cmp-nvim-lua' }, -- Optional

			-- Snippets
			{ 'L3MON4D3/LuaSnip' }, -- Required
			{ 'rafamadriz/friendly-snippets' }, -- Optional
		}
	}




	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use 'jose-elias-alvarez/null-ls.nvim'




	use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
		require('git-conflict').setup(
			{
				default_mappings = true, -- disable buffer local mapping created by this plugin
				disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
				highlights = { -- They must have background color, otherwise the default color will be used
					incoming = 'DiffDelete',
					current = 'DiffAdd',
				}
			}
		)
	end }
end
)


