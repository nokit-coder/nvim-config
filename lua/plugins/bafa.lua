return {
	"mistweaverco/bafa.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	cmd = "BafaToggle",
	keys = {
		{ "<leader>bf", function() require("bafa").toggle() end, desc = "Toggle Bafa Buffer Manager" },
	},
	opts = {
		with_jump_labels = true,
	},
}
