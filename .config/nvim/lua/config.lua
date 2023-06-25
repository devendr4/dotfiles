require("nvim-tree").setup()
require 'hop'.setup()
require('Comment').setup()
require('colorizer').setup()
require("nvim-autopairs").setup {}
require('neoscroll').setup()
require('alpha').setup(require 'alpha.themes.dashboard'.config)
local Path = require('plenary.path')

require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = { left = '', right = '' },
		section_separators = { left = '', right = '' },
		disabled_filetypes = {},
		always_divide_middle = true,
		globalstatus = false,
	},
	sections = {
		lualine_a = { 'mode' },
		lualine_b = { 'branch', 'diagnostics' },
		lualine_c = { { 'filename',
			path = 1 } },
		lualine_x = { 'diff' },
		lualine_y = { 'filetype' },
		lualine_z = { 'fileformat' }
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {}
	},
	extensions = {}
}


require('gitsigns').setup {
	signs = {
		add = { hl = "GitSignsAdd", text = "", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
		change = { hl = "GitSignsChange", text = "", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
		delete = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		topdelete = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		changedelete = { hl = "GitSignsChange", text = "", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
	},
	signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
	numhl = true, -- Toggle with `:Gitsigns toggle_numhl`
	linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
	watch_gitdir = {
		interval = 1000,
		follow_files = true,
	},
	attach_to_untracked = true,
	current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
		ignore_whitespace = false,
	},
	current_line_blame_formatter_opts = {
		relative_time = false,
	},
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil, -- Use default
	max_file_length = 40000,
	preview_config = {
		-- Options passed to nvim_open_win
		border = "single",
		style = "minimal",
		relative = "cursor",
		row = 0,
		col = 1,
	},
	yadm = {
		enable = false,
	},
}


require('session_manager').setup({
	sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'), -- The directory where the session files will be saved.
	path_replacer = '__', -- The character to which the path separator will be replaced for session files.
	colon_replacer = '++', -- The character to which the colon symbol will be replaced for session files.
	autoload_mode = require('session_manager.config').AutoloadMode.CurrentDir, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
	autosave_last_session = true, -- Automatically save last session on exit and on session switch.
	autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
	autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
		'gitcommit',
	},
	autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
	max_path_length = 80, -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
})


require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "python", "typescript", "tsx", "python", "javascript" },
	auto_install = true,
	autotag = {
		enable = true,
	},
	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
}


--[[ require('git-conflict').setup(
{
  default_mappings = false, -- disable buffer local mapping created by this plugin
  disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
  highlights = { -- They must have background color, otherwise the default color will be used
    incoming = 'Directory',
    current = 'Boolean',
  }
}
  ) ]]
--[[ require('onedark').setup {
	toggle_style_key = "<leader>ts",
	-- style = 'warmer',
	lualine = {
		transparent = true
	}
}
require('onedark').load() ]]


-----------------------------------LSP-------------------------------------
-- local lsp = require('lsp-zero')
-- lsp.preset('recommended')
-- lsp.setup()
--
--
-- -- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
-- local null_ls = require("null-ls")
-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
-- local lsp_formatting = function(bufnr)
-- 	vim.lsp.buf.format({
-- 		filter = function(client)
-- 			-- apply whatever logic you want (in this example, we'll only use null-ls)
-- 			return client.name == "null-ls"
-- 		end,
-- 		bufnr = bufnr,
-- 	})
-- end
--
--
--
-- require("null-ls").setup({
-- 	sources = {
-- 		null_ls.builtins.code_actions.eslint_d,
-- 		null_ls.builtins.diagnostics.eslint_d,
-- 		null_ls.builtins.formatting.eslint_d,
-- 		null_ls.builtins.formatting.prettierd,
-- 		null_ls.builtins.formatting.prismaFmt
-- 		-- null_ls.builtins.completion.spell,
-- 	},
-- 	on_attach = function(client, bufnr)
-- 		if client.supports_method("textDocument/formatting") then
-- 			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
-- 			vim.api.nvim_create_autocmd("BufWritePre", {
-- 				group = augroup,
-- 				buffer = bufnr,
-- 				callback = function()
-- 					lsp_formatting(bufnr)
-- 				end,
-- 			})
-- 		end
-- 	end
-- 	--
-- })
--
--
-- require('silicon').setup({
-- 	font = 'FantasqueSansMono Nerd Font=16',
-- 	theme = 'Monokai Extended',
-- })
