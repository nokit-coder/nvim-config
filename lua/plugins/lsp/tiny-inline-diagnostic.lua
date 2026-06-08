return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "LspAttach",
	opts = {
		multilines = {
			enabled = true,
		},
	},
	config = function()
		vim.diagnostic.config{ virtual_text = true }
	end,
}
