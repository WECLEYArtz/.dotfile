return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()

			local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require('lspconfig')

			local handlers =  {
				["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {
					border = "single",
				}),
				["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {
					border = "single",
				}),
			}

			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
			require('mason-lspconfig').setup({
				-- ensure_installed = {'rust_analyzer'},
				handlers = {
					function(server_name)
						lspconfig[server_name].setup({
							capabilities = lsp_capabilities,
							handlers = handlers,
						})
					end,
					lua_ls = function()
						lspconfig.lua_ls.setup({
							capabilities = lsp_capabilities,
							handlers = handlers,
							settings = {
								Lua = {
									runtime = {
										version = 'LuaJIT'
									},
									diagnostics = {
										globals = {'vim'},
									},
									workspace = {
										library = {
											vim.env.VIMRUNTIME,
										}
									}
								}
							}
						})
					end,
				}
			})
		end
	}
}
