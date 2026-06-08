return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	-- keys = {
	-- 	{
	-- 		"<C-j>",
	-- 		function()
	-- 			return require("nvim-autopairs").autopairs_cr()
	-- 		end,
	-- 		mode = "i",
	-- 		expr = true,
	-- 		desc = "New line inside brackets",
	-- 	},
	-- },
	opts = {
		check_ts = true,
		map_cr = true,
		map_c_h = true,
		map_c_w = true,
	},
}
