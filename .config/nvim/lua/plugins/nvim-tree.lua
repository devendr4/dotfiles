return {
	"nvim-tree/nvim-tree.lua",
	opts = function()
		return {
			sort_by = "case_sensitive",
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		}
	end,

	keys = {
		{ "<F1>", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle tree" },
	},
}
