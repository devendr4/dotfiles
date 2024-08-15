return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
		"windwp/nvim-ts-autotag",
		{ "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" },
	},
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "typescript", "python", "tsx", "css", "vue", "javascript" },

			highlight = { enable = true },

			incremental_selection = { enable = true },
		})
	end,
}
