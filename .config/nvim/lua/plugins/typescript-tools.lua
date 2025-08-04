return {
	"pmizio/typescript-tools.nvim",

	config = function()
		require("typescript-tools").setup({
			settings = {
				tsserver_plugins = {
					-- for TypeScript v4.9+
					"@styled/typescript-styled-plugin",
				},
				expose_as_code_action = { "all" },
			},
		})
	end,

	-- opts = {
	-- 	tsserver_plugins = { "@styled/typescript-styled-plugin" },
	-- 	expose_as_code_action = { "all" },
	-- },
}
