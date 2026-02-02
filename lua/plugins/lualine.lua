return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "AndreM222/copilot-lualine" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_c = { { "filename", path = 3 } },
				lualine_x = { { "copilot", show_colors = true }, "encoding", "fileformat", "filetype" },
			},
		})
	end,
}
