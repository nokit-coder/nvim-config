return {
	"B1gum/Tungsten",
	dependencies = {
		"vhyrro/luarocks.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim", -- Optional
		"folke/which-key.nvim", -- Optional
	},
	build = "./scripts/install_python_deps.sh",
	opts = {
	},
	rocks = {
		"lpeg",
		"lpeglabel",
		"luafilesystem",
		"penlight",
	},
}
