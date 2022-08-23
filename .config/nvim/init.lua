vim.opt.termguicolors = true
vim.g.mapleader = " "

require('plugins')
require('config')
require('keybinds')
require('telescope-config')
local vim = vim
local api = vim.api
local o   = vim.o

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.opt.mouse = "a"
o.clipboard = 'unnamedplus'
o.splitright = true
o.splitbelow = true

-- vim.g.colors_name='everforest'

api.nvim_command [[colorscheme everforest]]

