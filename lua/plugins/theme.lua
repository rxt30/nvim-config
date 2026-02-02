return {
	"catppuccin/nvim",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("catppuccin-macchiato")
		vim.cmd.hi("Comment gui=none")
		vim.opt.laststatus = 3
	end,
	config = function()
		require("catppuccin").setup({
			custom_highlights = function(colors)
				return {
					WinSeparator = { fg = colors.green },
				}
			end,
		})
	end,
}
