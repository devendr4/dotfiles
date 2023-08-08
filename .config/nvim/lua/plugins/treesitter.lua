return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = function()
		return {
			ensure_installed = { "typescript", "python" },
			highlight = {
				enabled = true,
			},
		}
	end,
}
