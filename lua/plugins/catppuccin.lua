return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha",
		transparent_background = true,
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
		},
		integrations = {
			bufferline = true,
			mini = {
				enabled = true,
			},
		},
		custom_highlights = function(colors)
			return {
				NormalFloat = { bg = "none" },
				FloatBorder = { fg = colors.surface2, bg = "none" },
				FloatTitle = { fg = colors.blue, bg = "none", bold = true },

				Pmenu = { bg = "none" },
				PmenuSel = { fg = colors.base, bg = colors.blue, bold = true },
				PmenuSbar = { bg = "none" },
				PmenuThumb = { bg = colors.surface1 },
				CmpDoc = { bg = "none" },
				CmpDocBorder = { fg = colors.surface2, bg = "none" },

				TelescopeNormal = { bg = "none" },
				TelescopeBorder = { fg = colors.surface2, bg = "none" },
				TelescopePromptNormal = { bg = "none" },
				TelescopePromptBorder = { fg = colors.surface2, bg = "none" },
				TelescopePromptTitle = { fg = colors.blue, bg = "none", bold = true },
				TelescopePreviewTitle = { fg = colors.green, bg = "none", bold = true },
				TelescopeResultsTitle = { fg = colors.lavender, bg = "none", bold = true },

				LspInfoBorder = { fg = colors.surface2, bg = "none" },
				DiagnosticFloatingError = { fg = colors.red, bg = "none" },
				DiagnosticFloatingWarn = { fg = colors.yellow, bg = "none" },
				DiagnosticFloatingInfo = { fg = colors.sky, bg = "none" },
				DiagnosticFloatingHint = { fg = colors.teal, bg = "none" },
			}
		end,
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme("catppuccin-nvim")
	end,
}
