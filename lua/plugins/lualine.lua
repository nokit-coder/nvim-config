return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"catppuccin/nvim",
	},
	event = "VeryLazy",
	opts = {
		options = {
			theme = "catppuccin-nvim",
			component_separators = "",
			section_separators = "",
		},
	},
}
