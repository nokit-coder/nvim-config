return {
	"neovim/nvim-lspconfig",
	ft = { "lua", "c", "cpp", "python", "h", "hpp" },
	dependencies = {
		"saghen/blink.cmp",
	},
	keys = {
		{
			"<leader>ch",
			"<cmd>LspClangdSwitchSourceHeader<CR>",
			desc = "Switch source/header",
		},
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		-- Общие возможности LSP, включая автодополнение Blink
		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		-- Lua
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						checkThirdParty = false,
						library = {
							vim.env.VIMRUNTIME,
						},
					},
					telemetry = {
						enable = false,
					},
				},
			},
		})

		-- C / C++
		vim.lsp.config("clangd", {
			cmd = {
				"clangd",
				-- "--parse-forward-comments",
				"--background-index",
				"--clang-tidy",
			},
		})

		-- Python
		vim.lsp.config("basedpyright", {
			settings = {
				basedpyright = {
					analysis = {
						typeCheckingMode = "standard",
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
					},
				},
			},
		})

		-- Включаем серверы через встроенный API Neovim 0.11+
		vim.lsp.enable({
			"lua_ls",
			"clangd",
			"basedpyright",
		})

		-- Keymaps при подключении LSP к буферу
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(event)
				local opts = {
					buffer = event.buf,
					silent = true,
				}

				local map = vim.keymap.set

				-- map("n", "gd", vim.lsp.buf.definition, opts)
				-- map("n", "gD", vim.lsp.buf.declaration, opts)
				-- map("n", "gr", vim.lsp.buf.references, opts)
				-- map("n", "gi", vim.lsp.buf.implementation, opts)
				map("n", "K", vim.lsp.buf.hover, opts)

				map("n", "<leader>rn", vim.lsp.buf.rename, opts)
				map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
			end,
		})
	end,
}
