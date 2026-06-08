return {
	"josephschmitt/pj.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	event = "VeryLazy",
	cmd = { "Pj", "PjCd" },
	keys = {
		{ "<leader>fP", "<cmd>PjCd<cr>", desc = "Change to Project" },
	},
	opts = {},
}
