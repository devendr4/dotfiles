return {
	"nvim-lua/plenary.nvim",
	"sainnhe/everforest",
	"norcalli/nvim-colorizer.lua",

	{
		"lewis6991/gitsigns.nvim",

		opts = function()
			return {
				current_line_blame = true,
			}
		end,
	},
}
