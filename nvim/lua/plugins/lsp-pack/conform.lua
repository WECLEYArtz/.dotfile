return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				cpp = { "clang-format" },
				lua = { "stylua" },
				-- python = { "isort", "black" },
				-- rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", stop_after_first = true },
				astro = { "prettier", stop_after_first = true },
				asm = { "asmfmt" },
			},
			format_after_save = {
				timeout_ms = 2000,
				async = true,
				-- lsp_fallback = true,
			},
		})
		conform.formatters.prettier = {
			prepend_args = { "--use-tabs", "--prose-wrap", "always", "--tab-width 4" },
		}
		conform.formatters.prettierd = {
			prepend_args = { "--use-tabs", "--tab-width 4" },
		}
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				conform.format({ bufnr = args.buf })
			end,
		})
	end,
}
