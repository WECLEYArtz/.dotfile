return {
	'williamboman/mason-lspconfig.nvim',
	dependencies = {
		"williamboman/mason.nvim",
		'hrsh7th/cmp-nvim-lsp',
	},
	config = function()

		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		local handlers =  {
			["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {
				border = "single",
			}),
			["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {
				border = "single",
			}),
		}

		require("mason").setup()
		require("mason-lspconfig").setup_handlers {
			function (server_name) -- default handler (optional)
				require("lspconfig")[server_name].setup
				{
					capabilities = capabilities,
					handlers = handlers,
				}
			end,

			-- ["rust_analyzer"] = function ()
			-- 	require("rust-tools").setup {}
			-- end
		}
	end,
}
