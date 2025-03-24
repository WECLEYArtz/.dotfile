return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- python = { "isort", "black" },
				-- rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				astro = { "prettier", stop_after_first = true },
			},
		})
		require("conform").formatters.prettier = {
			prepend_args = { "--config", "~/.local/share/nvim/mason/packages/prettier/prettierrc.json" },
		}
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				conform.format({ bufnr = args.buf })
			end,
		})
	end,
}
