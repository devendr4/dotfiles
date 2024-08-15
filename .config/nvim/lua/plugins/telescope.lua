return {
	{
		"nvim-telescope/telescope.nvim",
		--
		-- config = function()
		-- 	require("telescope").load_extension("fzf")
		-- end,

		cmd = "Telescope",

		keys = {
			{
				"<leader>ff",
				"<cmd>Telescope find_files<cr>",
				desc = "Find files",
			},
			{
				"<leader>fg",
				"<cmd>Telescope live_grep<cr>",
				desc = "Live grep",
			},
		},

		opts = function()
			local telescopeConfig = require("telescope.config")

			-- Clone the default Telescope configuration
			local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
			-- I want to search in hidden/dot files.
			table.insert(vimgrep_arguments, "--hidden")
			-- I don't want to search in the `.git` directory.
			table.insert(vimgrep_arguments, "--glob")
			table.insert(vimgrep_arguments, "!**/.git/*")
			return {
				defaults = {

					prompt_prefix = " ",
					selection_caret = " ",
					-- `hidden = true` is not supported in text grep commands.
					vimgrep_arguments = vimgrep_arguments,
				},
				pickers = {
					find_files = {
						theme = "ivy",
						-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
						find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
					},

					live_grep = {
						theme = "ivy",
					},
				},
			}
		end,
	},

	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
}
