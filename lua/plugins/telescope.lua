return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope Find Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope Live Grep" },
	},
	opts = {
		defaults = {
			-- mappings = {
			-- 	i = {
			-- 		["<esc>"] = actions.close
			-- 	},
			-- },
			vimgrep_arguments = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
				"--trim" -- add this value
			},
		},
		pickers = {
			find_files = {
				find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
			},
		}
	}
}
