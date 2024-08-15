return {
	"stevearc/conform.nvim",
	opts = function()
		local prettier = { "prettierd", "eslint_d" } --, "prettier" }
		local ruff = { "ruff_fix", "ruff_format" }
		return {

			format_on_save = {

				-- These options will be passed to conform.format()
				timeout_ms = 500,
				-- lsp_fallback = true,
				-- async = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = ruff,
				-- Use a sub-list to run only the first available formatter
				javascript = prettier,
				svelte = prettier,
				typescript = prettier,
				typescriptreact = prettier,
				javascriptreact = prettier,
				json = prettier,
				vue = prettier,
				html = prettier,
				-- htmldjango = { "prettier" },
				markdown = prettier,
				scss = prettier,
				css = prettier,
				go = { "gofumpt" },
				bash = { "shfmt" },
				-- sql = { "sqlfmt" },
			},
		}
	end,
}
