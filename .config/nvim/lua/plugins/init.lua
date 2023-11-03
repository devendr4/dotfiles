return {
	"nvim-lua/plenary.nvim",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "romainl/vim-cool" },
	{ "iloginow/vim-stylus" },
	{
		"sainnhe/everforest",
		lazy = false,
		prioriy = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme everforest]])
		end,
	},
	-- { "nvim-treesitter/nvim-treesitter-angular" },
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
		lazy = false,
	},

	{ "akinsho/git-conflict.nvim", version = "*", config = true },
	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
		end,
	},
	{
		"michaelrommel/nvim-silicon",
		lazy = true,
		cmd = "Silicon",
		config = function()
			require("silicon").setup({
				-- Configuration here, or leave empty to use defaults
				to_clipboard = true,
				font = "Iosevka Nerd Font=34",
			})
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	{
		"norcalli/nvim-colorizer.lua",
		opts = function()
			return {
				"css",
				"javascript",
				"typescript",
				"typescriptreact",
				"scss",
				"vue",
				html = {
					mode = "foreground",
				},
			}
		end,
	},

	{
		"lewis6991/gitsigns.nvim",

		opts = function()
			return {
				current_line_blame = true,
			}
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			-- "rcarriga/nvim-notify",
		},
	},
}
