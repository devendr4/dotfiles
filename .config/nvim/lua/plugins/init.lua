return {
	"nvim-lua/plenary.nvim",
	"sainnhe/everforest",

	{
		"lewis6991/gitsigns.nvim",

		opts = function()
			return {
				current_line_blame = true,
			}
		end,
	},
}
