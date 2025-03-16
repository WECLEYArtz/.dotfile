return {
	'williamboman/mason-lspconfig.nvim',
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = function()

		local lspconfig = require('lspconfig')
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
		require("mason-lspconfig").setup{
			handlers = {
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = capabilities,
						handlers = handlers,
					})
				end,

				lua_ls = function()
					lspconfig.lua_ls.setup({
						capabilities = capabilities,
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
				ts_ls = function()
					require("typescript-tools").setup {
						handlers = {
							["textDocument/publishDiagnostics"] = require("typescript-tools.api").filter_diagnostics(
							-- Ignore 'This may be converted to an async function' diagnostics.
							{ 80001 }
							),
						},
					}
				end,
			}
		}
	end,
}
