return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },

	-- use a release tag to download pre-built binaries
	version = "1.*",

	opts = {

		keymap = {
			preset = "default",

			["<UP>"] = { "scroll_documentation_up" },
			["<DOWN>"] = { "scroll_documentation_down" },

			["<C-space>"] = {
				function(cmp)
					cmp.show()
				end,
			},

			["<TAB>"] = { "select_next", "fallback" },
			["<S-TAB>"] = { "select_prev", "fallback" },
			["Y"] = { "select_and_accept" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			keyword = {
				range = "prefix",
			},

			accept = {
				auto_brackets = {
					enabled = true,
					default_brackets = { "(", ")" },
					kind_resolution = {
						enabled = true,
						blocked_filetypes = { "typescriptreact", "javascriptreact", "vue" },
					},
				},
			},

			list = {
				selection = {
					preselect = false,
					auto_insert = true,
				},
			},
			-- or set via a function

			menu = {
				-- Don't automatically show the completion menu
				auto_show = true,
			},

			-- Show documentation when selecting a completion item
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 500,
			},

			-- Display a preview of the selected item on the current line
			ghost_text = {
				enabled = false,
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				lsp = {
					score_offset = 1000,
				},
			},
		},
		signature = {
			enabled = true,
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},

	opts_extend = { "sources.default" },
}
