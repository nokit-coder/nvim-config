return {
	{
		"tejas-hosamani/nvim-sensei",
		opts = {
			model = "qwen3:4b",
		},
	},
	{
		"Root-lee/popai.nvim",
		cmd = "Popai",
		keys = {
			{ "<leader>pt", ":Popai translate_ru<CR>", mode = { "n", "v" }, desc = "Translate with PopAI" },
		},
		opts = {
			service = "ollama",
			ollama = {
				model = "qwen3:4b",
			},
			prompts = {
				translate_ru = "Translate the following text to Russia. Only output the translation result without any explanation:\n\n{input}",
				emoji = "Express the following text using ONLY powerline emojis. Do not use any words or letters:\n\n{input}",
			},
		},
	},
}
