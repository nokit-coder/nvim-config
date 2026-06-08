return {
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
		keys = {
			{ "<leader>dd", "<cmd>DiffviewOpen HEAD<cr>", desc = "Open Diffview", mode = "n" },
			{ "<leader>dh", "<cmd>DiffviewFileHistory<cr>", desc = "Open Diffview File History", mode = "n" },
			{ "<leader>dg", "<cmd>DiffviewClose<cr>", desc = "Close Diffview", mode = "n" },
		},
	},
}
