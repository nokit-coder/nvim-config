return {
	"zeybek/camouflage.nvim",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"hrsh7th/nvim-cmp",
	},
	keys = {
		{ "<leader>ct", "<cmd>CamouflageToggle<cr>", desc = "Toggle Camouflage" },
		{ "<leader>cr", "<cmd>CamouflageReveal<cr>", desc = "Reveal Line" },
		{ "<leader>cy", "<cmd>CamouflageYank<cr>", desc = "Yank Value" },
    { '<leader>cf', '<cmd>CamouflageFollowCursor<cr>', desc = 'Follow Cursor' },
	},
	opts = {
  auto_enable = false,
	},
}
