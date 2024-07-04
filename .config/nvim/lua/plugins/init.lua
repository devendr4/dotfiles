return {
	"nvim-lua/plenary.nvim",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "romainl/vim-cool" },
	{ "iloginow/vim-stylus" },
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
	-- {
	-- 	"sainnhe/everforest",
	-- 	lazy = false,
	-- 	prioriy = 1000,
	-- 	config = function()
	-- 		-- load the colorscheme here
	-- 		vim.cmd([[colorscheme everforest]])
	-- 	end,
	-- },
	--[[ {
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon", -- auto, main, moon, or dawn
				dark_variant = "moon", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				highlight_groups = {
					-- Comment = { fg = "foam" },
					-- VertSplit = { fg = "muted", bg = "muted" },
				},

				before_highlight = function(group, highlight, palette)
					-- Disable all undercurls
					-- if highlight.undercurl then
					--     highlight.undercurl = false
					-- end
					--
					-- Change palette colour
					-- if highlight.fg == palette.pine then
					--     highlight.fg = palette.foam
					-- end
				end,
			})
			vim.cmd("colorscheme rose-pine-moon")
		end,
	} ]]

	-- {
	-- 	"shaunsingh/nord.nvim",
	-- 	lazy = false,
	-- 	prioriy = 1000,
	-- 	config = function()
	-- 		-- load the colorscheme here
	-- 		vim.cmd([[colorscheme nord]])
	-- 	end,
	-- },

	-- {
	-- 	"AlexvZyl/nordic.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("nordic").load()
	-- 	end,
	-- },
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
		"windwp/nvim-ts-autotag",

		config = function()
			require("nvim-ts-autotag").setup({
				opts = {
					-- Defaults
					enable_close = true, -- Auto close tags
					enable_rename = true, -- Auto rename pairs of tags
					enable_close_on_slash = false, -- Auto close on trailing </
				},
				-- Also override individual filetype configs, these take priority.
				-- Empty by default, useful if one of the "opts" global settings
				-- doesn't work well in a specific filetype
				per_filetype = {
					["html"] = {
						enable_close = false,
					},
				},
			})
		end,
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
