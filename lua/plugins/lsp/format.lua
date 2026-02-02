return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			if vim.b[bufnr].disable_autoformat or vim.g.disable_autoformat then
				return
			end
			return {
				timeout_ms = 500,
				lsp_format = "fallback",
			}
		end,
		formatters_by_ft = require("plugins.lsp.formatters"),
	},
}
