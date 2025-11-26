vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.wo.number = true
-- vim.wo.relativenumber = true
vim.o.clipboard = "unnamedplus"

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.wrap = true
vim.opt.swapfile = false
vim.opt.undodir = "~/.undodir"

if vim.g.neovide then
	vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
	vim.keymap.set("v", "<D-c>", '"+y') -- Copy
	vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
	vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
	vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
	vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end
