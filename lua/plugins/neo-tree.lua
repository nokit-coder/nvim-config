return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	cmd = "Neotree",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>nt", "<cmd>Neotree filesystem toggle left<cr>", desc = "Toggle Neo-tree" },
		{ "<leader>nb", "<cmd>Neotree buffers reveal float<cr>", desc = "Neo-tree Buffers Float" },
	},
	opts = {
		window = {
			backgroundColor = "none",
		},
	},
}
