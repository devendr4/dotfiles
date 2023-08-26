return {
	"nvim-lua/plenary.nvim",
	{
		"sainnhe/everforest",
		lazy = false,
		prioriy = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme everforest]])
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
		lazy = false,
	},
	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
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
				"css",
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

	--[[ {
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				theme = "doom",
				config = {
					header = { "neovim" }, --your header
					-- week_header = {
					-- 	enable = true, --boolean use a week header
					-- },
					center = {
						{
							icon = " ",
							icon_hl = "Title",
							desc = "Find File           ",
							desc_hl = "String",
							key = "b",
							keymap = "SPC f f",
							key_hl = "Number",
							action = "lua print(2)",
						},
						{
							icon = " ",
							desc = "Find Dotfiles",
							key = "f",
							keymap = "SPC f d",
							action = "lua print(3)",
						},
					},
					-- footer = {}, --your footer
				},
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	}, ]]
}
