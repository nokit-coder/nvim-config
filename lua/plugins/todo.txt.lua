return {
	"phrmendes/todotxt.nvim",
	ft = "todotxt",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	keys = {
		{ "<leader>to", "<cmd>TodoTxtOpen<cr>", desc = "Open todo.txt" },
		{ "<leader>td", "<cmd>TodoTxtToggleDone<cr>", desc = "Toggle task done" },
		{ "<leader>tp", "<cmd>TodoTxtCapture<cr>", desc = "Quick capture task" },
	},
	opts = {
		todo_path = vim.fn.expand("~/Documents/todo.txt"),
		done_path = vim.fn.expand("~/Documents/done.txt"),
	},
	init = function()
		vim.filetype.add({
			filename = {
				["todo.txt"] = "todotxt",
				["done.txt"] = "todotxt",
			},
		})
	end,
}
