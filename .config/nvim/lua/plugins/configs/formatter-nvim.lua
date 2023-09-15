local util = require("formatter.util")
-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		--
		javascript = {
			require("formatter.defaults").prettierd,
			require("formatter.defaults").eslint_d,
		},
		typescript = {
			require("formatter.defaults").prettierd,
			require("formatter.defaults").eslint_d,
		},
		json = {

			require("formatter.defaults").prettierd,
		},

		typescriptreact = {
			require("formatter.defaults").prettierd,
			require("formatter.defaults").eslint_d,
		},

		vue = {
			require("formatter.defaults").prettierd,
			require("formatter.defaults").eslint,
		},
		html = {
			require("formatter.defaults").prettierd,
			require("formatter.defaults").eslint_d,
		},
		scss = {

			require("formatter.defaults").prettierd,
		},

		css = {

			require("formatter.defaults").prettierd,
		},

		python = {
			require("formatter.filetypes.python").black,
			require("formatter.filetypes.python").isort,
		},
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.lua").stylua,

			-- You can also define your own configuration
			-- function()
			-- 	-- Full specification of configurations is down below and in Vim help
			-- 	-- files
			-- 	return {
			-- 		exe = "stylua",
			-- 		args = {
			-- 			"--search-parent-directories",
			-- 			"--stdin-filepath",
			-- 			util.escape_path(util.get_current_buffer_file_path()),
			-- 			"--",
			-- 			"-",
			-- 		},
			-- 		stdin = true,
			-- 	}
			-- end,
		},

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.api.nvim_exec(
	[[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]],
	true
)

require("lint").linters_by_ft = {
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	dockerfile = { "hadolint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
