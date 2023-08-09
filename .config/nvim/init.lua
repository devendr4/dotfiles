local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("options")
require("lazy").setup("plugins")
require("keybinds")

require("plugins.configs.lsp")
require("plugins.configs.mini")
require("plugins.configs.formatter-nvim")

vim.api.nvim_command([[colorscheme everforest]])
