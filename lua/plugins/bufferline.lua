return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"catppuccin/nvim",
	},
	event = "VeryLazy",
	-- opts = function()
		-- local has_catppuccin, catppuccin_integration = pcall(require, "catppuccin.groups.integrations.bufferline")
		-- local highlights = has_catppuccin and catppuccin_integration.get({ styles = { "transparent_panel" } }) or {}

		-- return {
		opts = {
			options = {
				mode = "tabs",
				separator_style = "thin",
				diagnostics = "nvim-lsp",
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
						separator = true,
					},
				},
			},
			-- highlights = highlights,
		}
	-- end,
}
