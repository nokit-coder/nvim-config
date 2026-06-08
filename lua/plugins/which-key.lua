return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	keys = {
		{ "<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer Local Keymaps", },
	},
	opts = {
		preset = "modern",
	},
	config = function()
		local wk = require("which-key")

		wk.add{
			{ "<leader>f", group = "Find" },
			{ "<leader>d", group = "Diff" },
			{ "<leader>n", group = "Navigation" },
		}
	end,
}
