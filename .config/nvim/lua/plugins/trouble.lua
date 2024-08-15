return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = "Trouble",
	keys = {
		-- {
		-- 	"<leader>t",
		-- 	"<cmd>Trouble diagnostics toggle<cr>",
		-- 	desc = "Diagnostics (Trouble)",
		-- },
		{
			"<leader>t",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Trouble Diagnostics",
		},
	},
	opts = {},
}
