vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local toggle_oil_window = function()
	require("oil").toggle_float()
end

vim.keymap.set("n", "<leader>w", "<cmd> w <CR>", opts)
vim.keymap.set("n", "<leader>e", toggle_oil_window, opts)
vim.keymap.set("n", "<leader>sv", "<C-w>v", opts)
vim.keymap.set("n", "<leader>sh", "<C-w>s", opts)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts, { desc = "Move to left split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", opts, { desc = "Move to right split" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", opts)
vim.keymap.set("n", "C-u", "<C-u>zz", opts)
vim.keymap.set("n", "C-d", "<C-u>zz", opts)

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
