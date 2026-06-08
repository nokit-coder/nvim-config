return {
	-- stream_suggestion = true,
	-- 	filetypes = { "python", "lua", "vim", "markdown", "c", "cpp", "bash" },
	{
		"maxpaulus43/llama-cmp.nvim",
		event = "InsertEnter",
		opts = {
			model = "qwen2.5-coder:1.5b",

			debounce_ms = 100,

			context = {
				max_prefix_lines = 50,
				max_suffix_lines = 20,
			},

			generation = {
				max_tokens = 256,
			},

			keymaps = {
				accept = "<Tab>",
				-- trigger = "<C-Tab>",
			},
		},
	},
}
