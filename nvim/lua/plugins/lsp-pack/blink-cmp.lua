return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },

	-- use a release tag to download pre-built binaries
	version = "1.*",

	opts = {
		keymap = {
			preset = "default",

			-- ["E"] = { "scroll_documentation_up" },
			-- ["N"] = { "scroll_documentation_down" },

			["<C-space>"] = {
				function(cmp)
					cmp.show({ providers = { "snippets" } })
				end,
			},

			["E"] = { "select_prev", "fallback" },
			["N"] = { "select_next", "fallback" },
			["Y"] = { "select_and_accept" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = { documentation = { auto_show = true } },

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
