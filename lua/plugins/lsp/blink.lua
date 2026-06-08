return {
  "saghen/blink.cmp",
  dependencies = {
    'saghen/blink.lib',
    "rafamadriz/friendly-snippets",
  },
	build = function() require('blink.cmp').build():pwait() end,
	event = "InsertEnter",
  keys = {
    {
      "<C-Space>",
      function()
        require("blink.cmp").show()
      end,
      mode = { "i" },
      desc = "Show completion",
    },
    {
      "<C-e>",
      function()
        require("blink.cmp").hide()
      end,
      mode = { "i" },
      desc = "Hide completion",
    },
  },
  opts = {
    keymap = {
      preset = "default",

			['<C-n>'] = { function(cmp) cmp.select_next({ auto_insert = false }) end, 'snippet_forward', 'fallback' },
			['<C-p>'] = { function(cmp) cmp.select_prev({ auto_insert = false }) end, 'snippet_backward', 'fallback' },

			['<C-l>'] = { 'select_and_accept', 'fallback' },

			['<C-d>'] = { 'scroll_documentation_down', 'fallback' },
			['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
			menu = {
				auto_show = false,
			},
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 400,
      },
			ghost_text = {
				enabled = true,
				show_without_selection = true,
			}
    },
    fuzzy = {
      implementation = "prefer_rust_with_warning",
    },
  },
}
