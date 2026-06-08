return {
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonLog", "MasonUninstall", "MasonUninstallAll", "MasonUpdate" },
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local servers = {
				lua_ls = {},
				bashls = {},
				clangd = {},
				cssls = {},
				dockerls = {},
				hyprls = {},
				pylsp = {},
				arduino_language_server = {},
			}

			local handlers = {
				function(server_name)
					local opts = { capabilities = capabilities }
					if servers[server_name] then
						opts = vim.tbl_deep_extend("force", opts, servers[server_name])
					end
					lspconfig[server_name].setup(opts)
				end,
			}

			require("mason-lspconfig").setup({
				ensure_installed = vim.tbl_keys(servers),
				handlers = handlers,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP Go to Definition" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "LSP Go to References" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
		end,
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "LspAttach",
		priority = 1000,
		opts = {
			multilines = {
				enabled = true,
			},
		},
		config = function(_, opts)
			require("tiny-inline-diagnostic").setup(opts)
			vim.diagnostic.config({ virtual_text = false })
		end,
	},
}
