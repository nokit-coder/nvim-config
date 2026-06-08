return {
	"max397574/better-escape.nvim",
	event = "InsertEnter",
	opts = {
		timeout = vim.o.timeoutlen,
		default_mapping = false,
		mappings = {
			i = {
				j = {
					k = "<Esc>",
					j = false,
				},
			}
		}
	},
}
