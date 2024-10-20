local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = opts.silent ~= false
	if opts.remap and not vim.g.vscode then
		opts.remap = nil
	end
	vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "<Space>", "<Nop>", { silent = true, remap = false })

-- -- better up/down
-- map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
--
-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Tab navigation
map("n", "<Tab>", "<cmd>BufferNext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>BufferPrevious<CR>", { desc = "Prev buffer" })
map("n", "<leader>d", "<cmd>BufferClose<CR>", { desc = "Delete buffer" })
-- map("n","space","<Nop>")

map("n", "<leader>li", "<cmd>LspInfo<CR>", { desc = "LSP Info" })
map("n", "<leader>lr", "<cmd>LspRestart<CR>", { desc = "Restart LSP" })

-- LSP Saga
map("n", "K", "<cmd>Lspsaga hover_doc<CR>")
map("n", "<leader>a", "<cmd>Lspsaga code_action<CR>", { desc = "Code action" })

map("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "Go to definition" })
map("n", "gD", "<cmd>Lspsaga goto_type_definition<CR>", { desc = "Go to type definition" })

map("v", "<leader>s", "<cmd>'<,'>Silicon<CR>", { desc = "Silicon" })

--barbar
map("n", "<leader>bd", "<cmd>BufferCloseAllButCurrent<cr>", { desc = "Close all buffers but current" })

map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
