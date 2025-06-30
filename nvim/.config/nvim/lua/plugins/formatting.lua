return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
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
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
				quiet = false,
				async = false,
			},
		})
	end,
}
