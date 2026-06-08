return {
	"SmiteshP/nvim-navbuddy",
	dependencies = {
		"SmiteshP/nvim-navic",
		"MunifTanjim/nui.nvim"
	},
	keys = {
		{ "<leader>nv", "<cmd>Navbuddy<CR>", desc = "Open Navbuddy" }
	},
	opts = {
		lsp = {
			auto_attach = true
		}
	}
}
