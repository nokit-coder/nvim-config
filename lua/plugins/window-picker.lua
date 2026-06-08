return {
	"s1n7ax/nvim-window-picker",
	version = "2.*",
	event = "VeryLazy",
	keys = {
		{
			"<leader>w",
			function()
				local picked_window_id = require("window-picker").pick_window()
				if picked_window_id then
					vim.api.nvim_set_current_win(picked_window_id)
				end
			end,
			desc = "Pick a Window",
		},
	},
	opts = {
		hint = "statusline",
	},
}
