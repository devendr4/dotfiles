return {
	"stevearc/conform.nvim",
	opts = function()
		local prettier = { "prettierd" } --, "prettier" }
		return {

			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				-- lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- Use a sub-list to run only the first available formatter
				javascript = { prettier },
				typescript = { prettier },
				json = { prettier },
				vue = { prettier, "eslint_d" },
				html = { prettier },
				scss = { prettier },
				go = { "gofumpt" },
			},
		}
	end,
}
