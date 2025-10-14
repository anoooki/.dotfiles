return {
	"saghen/blink.cmp",
	dependencies = { "L3MON4D3/LuaSnip", "rafamadriz/friendly-snippets" },
	version = "1.*",

	opts = {
		snippets = { preset = "luasnip" },
		keymap = { preset = "enter" },
		completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 800,
			},
			list = { selection = { preselect = false } },
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		signature = { enabled = true },
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	config = function(_, opts)
		require("luasnip.loaders.from_vscode").load()
		require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })
		require("blink.cmp").setup(opts)
	end,
}
