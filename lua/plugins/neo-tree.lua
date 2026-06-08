return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"folke/snacks.nvim",
		"s1n7ax/nvim-window-picker",
	},
	cmd = "Neotree",
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
