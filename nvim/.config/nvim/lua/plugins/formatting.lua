return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				python = { "ruff" },
				php = { "php" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
				quiet = false,
				async = false,
			},
			formatters = {
				php = {
					command = "php-cs-fixer",
					args = {
						"fix",
						"$FILENAME",
					},
					stdin = false,
				},
			},
		})
	end,
}
