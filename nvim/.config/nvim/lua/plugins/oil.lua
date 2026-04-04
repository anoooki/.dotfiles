vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/stevearc/oil.nvim",
})

require("oil").setup({
	delete_to_trash = true,
	skip_confirm_for_simple_edits = false,

	float = {
		border = "rounded",
	},

	confirmation = {
		border = "rounded",
	},
})
