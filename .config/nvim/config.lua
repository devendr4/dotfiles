vim.cmd[[set termguicolors]]
vim.cmd[[syntax enable]]
-- vim.cmd[[syntax enable]]
-- vim.cmd[[hi CursorLine guibg=none]]
-- vim.cmd[[hi CursorLineNr guifg=#F5C2E7]]

-- NOTE: https://github.com/neoclide/coc.nvim/blob/master/doc/coc.txt
-- NOTE: https://github.com/catppuccin/nvim/blob/main/lua/catppuccin/core/color_palette.lua
vim.cmd[[hi CocErrorHighlight guifg=#cc241d]]
vim.cmd[[hi CocErrorSign guifg=#cc241d]]
-- vim.cmd[[hi CocErrorVirtualText guifg=#F28FAD]]
-- vim.cmd[[hi CocErrorLine guifg=#F28FAD]]

-- vim.cmd[[hi CocHintHighlight guifg=#F5E0DC]]
-- vim.cmd[[hi CocHintSign guifg=#F5E0DC]]
-- vim.cmd[[hi CocHintVirtualText guifg=#F5E0DC]]
-- vim.cmd[[hi CocHintLine guifg=#F5E0DC]]

-- vim.cmd[[hi CocInfoHighlight guifg=#89DCEB]]
-- vim.cmd[[hi CocInfoSign guifg=#89DCEB]]
-- vim.cmd[[hi CocInfoVirtualText guifg=#89DCEB]]
-- vim.cmd[[hi CocInfoLine guifg=#89DCEB]]

-- vim.cmd[[hi CocWarningHighlight guifg=#FAE3B0]]
-- vim.cmd[[hi CocWarningSign guifg=#FAE3B0]]
-- vim.cmd[[hi CocWarningVirtualText guifg=#FAE3B0]]
-- vim.cmd[[hi CocWarningLine guifg=#FAE3B0]]

-- vim.cmd[[hi CocDeprecatedHighlight guifg=#f28fad]]
-- vim.cmd[[hi CocFadeOut guifg=#f28fad]]
-- vim.cmd[[hi CocStrikeThrough guifg=#f28fad]]
-- vim.cmd[[hi CocUnusedHighlight guifg=#f28fad]]
--
 require('colorizer').setup()
 require('Comment').setup()

 require'nvim-web-devicons'.setup()



require'nvim-web-devicons'.setup()


-- local telescope = require('telescope')
--
-- telescope.setup {
--   defaults = {
--     sorting_strategy = "ascending",
--     prompt_prefix = " ",
--     prompt_position = "top"
--   },
--   pickers = {
--     git_files = {
--       layout_config = {
--         preview_width = 0.6,
--         prompt_position = "top"
--       }
--     },
--     commands = {
--       layout_config = {
--         prompt_position = "top"
--       }
--     },
--     git_status = {
--       layout_config = {
--         prompt_position = "top"
--       }
--     }
--   }
-- }
--
-- telescope.load_extension('coc')


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

vim.cmd[[command! -nargs=0 GitFiles :Telescope git_files ]]
vim.cmd[[command! -nargs=0 Commands :Telescope commands ]]
vim.cmd[[command! -nargs=0 GitStatus :Telescope git_status ]]

require('alpha').setup(require'alpha.themes.dashboard'.config)

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diagnostics'},
    lualine_c = {{'filename',
			path = 1}},
    lualine_x = {'diff'},
    lualine_y = {'filetype'},
    lualine_z = {'fileformat'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  -- tabline = {
  -- lualine_a = {
  --   {
  --     'tabs',
	 --  max_length= vim.o.columns,
  --                                     -- Note:
  --                                     -- It can also be a function that returns
  --                                     -- the value of `max_length` dynamically.
  --     mode = 2, -- 0: Shows tab_nr
  --               -- 1: Shows tab_name
  --               -- 2: Shows tab_nr + tab_name
  --
  --   }
  -- }
  -- },
  extensions = {}
}

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}


require("nvim-tree").setup()
require("bufferline").setup {
  options = {
    indicator_icon = "",
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = false,
	separator_style = "slant",
	diagnostics = "coc",
	mode = "buffers",
	-- max_prefix_length = 15,
  }
}

-- require'bufferline'.setup {
--   -- Enable/disable animations
--   animation = true,
--
--   -- Enable/disable auto-hiding the tab bar when there is a single buffer
--   auto_hide = false,
--
--   -- Enable/disable current/total tabpages indicator (top right corner)
--   tabpages = true,
--
--   -- Enable/disable close button
--   closable = true,
--
--   -- Enables/disable clickable tabs
--   --  - left-click: go to buffer
--   --  - middle-click: delete buffer
--   clickable = true,
--
--   -- Excludes buffers from the tabline
--   exclude_ft = {'javascript'},
--   exclude_name = {'package.json'},
--
--   -- Enable/disable icons
--   -- if set to 'numbers', will show buffer index in the tabline
--   -- if set to 'both', will show buffer index and icons in the tabline
--   icons = true,
--
--   -- If set, the icon color will follow its corresponding buffer
--   -- highlight group. By default, the Buffer*Icon group is linked to the
--   -- Buffer* group (see Highlighting below). Otherwise, it will take its
--   -- default value as defined by devicons.
--   icon_custom_colors = false,
--
--   -- Configure icons on the bufferline.
--   icon_separator_active = '▎',
--   icon_separator_inactive = '▎',
--   icon_close_tab = '',
--   icon_close_tab_modified = '●',
--   icon_pinned = '車',
--
--   -- If true, new buffers will be inserted at the start/end of the list.
--   -- Default is to insert after current buffer.
--   insert_at_end = false,
--   insert_at_start = false,
--
--   -- Sets the maximum padding width with which to surround each tab
--   maximum_padding = 1,
--
--   -- Sets the maximum buffer name length.
--   maximum_length = 30,
--
--   -- If set, the letters for each buffer in buffer-pick mode will be
--   -- assigned based on their name. Otherwise or in case all letters are
--   -- already assigned, the behavior is to assign letters in order of
--   -- usability (see order below)
--   semantic_letters = true,
--
--   -- New buffer letters are assigned in this order. This order is
--   -- optimal for the qwerty keyboard layout but might need adjustement
--   -- for other layouts.
--   letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
--
--   -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
--   -- where X is the buffer number. But only a static string is accepted here.
--   no_name_title = nil,
-- }



-- require("onedark").setup{
-- 	style = "darker"
-- }

-- require('dracula').load()
--
--vim.o.background = "dark" -- or "light" for light mode

-- Load and setup function to choose plugin and language highlights
--
--
require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
require("nvim-autopairs").setup {}
require('neoscroll').setup()


require('lush')(require('apprentice').setup({
  plugins = {
    "buftabline",
    "coc",
    "cmp", -- nvim-cmp
    "fzf",
    "gitgutter",
    "gitsigns",
    "lsp",
    "lspsaga",
    "nerdtree",
    "netrw",
    "nvimtree",
    "neogit",
    "packer",
    "signify",
    "startify",
    "syntastic",
    "telescope",
    "treesitter"
  },
  langs = {
    "c",
    "clojure",
    "coffeescript",
    "csharp",
    "css",
    "elixir",
    "golang",
    "haskell",
    "html",
    "java",
    "js",
    "json",
    "jsx",
    "lua",
    "markdown",
    "moonscript",
    "objc",
    "ocaml",
    "purescript",
    "python",
    "ruby",
    "rust",
    "scala",
    "typescript",
    "viml",
    "xml"
  }
}))
