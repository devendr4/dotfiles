return {
	"nvim-tree/nvim-tree.lua",
	opts = {
		sort_by = "case_sensitive",
		view = {
			width = 40,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = false,
		},
	},

	keys = {
		{ "<F1>", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle tree" },
	},
}
