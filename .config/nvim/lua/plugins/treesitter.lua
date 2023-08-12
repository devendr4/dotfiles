return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	build = ":TSUpdate",
	opts = function()
		return {
			ensure_installed = { "typescript", "python" },

			highlight = {
				enabled = true,
			},
			context_commentstring = {
				enabled = true,
			},
		}
	end,
}
