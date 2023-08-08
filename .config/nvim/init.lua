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

local vim = vim
local o = vim.o
o.clipboard = "unnamedplus"

local api = vim.api

require("keybinds")

require("lazy").setup("plugins")

require("plugins.configs.lsp")
require("plugins.configs.mini")
require("plugins.configs.formatter-nvim")

api.nvim_command([[colorscheme everforest]])
