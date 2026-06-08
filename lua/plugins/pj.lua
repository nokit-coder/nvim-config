return {
	"josephschmitt/pj.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	cmd = { "Pj", "PjCd", "PjOpen" },
	keys = {
		{ "<leader>fp", "<cmd>Pj<cr>", desc = "Find Projects" },
		{ "<leader>fP", "<cmd>PjCd<cr>", desc = "Change to Project" },
	},
	opts = {},
}
