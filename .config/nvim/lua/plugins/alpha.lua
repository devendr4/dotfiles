return {
	"goolord/alpha-nvim",
	config = function()
		-- require("alpha").setup(require("alpha.themes.dashboard").config)
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")
		startify.section.header.val = {
			"          .                                                      .",
			"        .n                   .                 .                  n.",
			"  .   .dP                  dP                   9b                 9b.    .",
			" 4    qXb         .       dX                     Xb       .        dXp     t",
			"dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb",
			"9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP",
			" 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP",
			"  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'",
			"    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'",
			"        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~",
			"                        )b.  .dbo.dP'`v'`9b.odb.  .dX(",
			"                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.",
			"                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb",
			"                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb",
			"                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP",
			"                     `'      9XXXXXX(   )XXXXXXP      `'",
			"                              XXXX X.`v'.X XXXX",
			"                              XP^X'`b   d'`X^XX",
			"                              X. 9  `   '  P )X",
			"                              `b  `       '  d'",
			"                               `             '",
		}
		startify.section.top_buttons.val = {
			startify.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			startify.button("s", "  Load session", ":SessionManager load_current_dir_session <CR>"),
		}
		-- disable MRU
		startify.section.mru.val = { { type = "padding", val = 0 } }
		-- disable MRU cwd
		startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
		-- disable nvim_web_devicons
		startify.nvim_web_devicons.enabled = false
		-- startify.nvim_web_devicons.highlight = false
		-- startify.nvim_web_devicons.highlight = 'Keyword'
		--
		startify.section.bottom_buttons.val = {
			startify.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
		}
		startify.section.footer.val = {
			{ type = "text", val = "footer" },
		}
		-- ignore filetypes in MRU

		startify.mru_opts.ignore = function(path, ext)
			return (string.find(path, "COMMIT_EDITMSG")) or (vim.tbl_contains(default_mru_ignore, ext))
		end
		alpha.setup(startify.config)
	end,
}
