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
				javascript = { "prettierd", stop_after_first = true },
				astro = { "prettier", stop_after_first = true },
			},
			format_after_save = {
				timeout_ms = 2000,
				async = true,
				-- lsp_fallback = true,
			},
		})
		conform.formatters.prettier = {
			prepend_args = { "--use-tabs", "--prose-wrap", "always" },
		}
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				conform.format({ bufnr = args.buf })
			end,
		})
	end,
}
-- ~/.local/share/nvim/mason/bin/prettier --plugin ~/.local/share/nvim/mason/packages/prettier/node_modules/prettier-plugin-astro --stdin-filepath src/pages/about.astro
-- ~/.local/share/nvim/mason/bin/prettier --find-config-path --check ~/projects/coding/portfolio/warmup/src/pages/about.astro
-- ~/.local/share/nvim/mason/bin/prettier --config ~/projects/coding/portfolio/warmup/prettierrc.mjs --check ~/projects/coding/portfolio/warmup/src/pages/about.astro
