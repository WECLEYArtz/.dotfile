return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = nil
		-- require("cmp_nvim_lsp").default_capabilities()
		local handlers = {
			vim.diagnostic.config({ virtual_lines = { current_line = true } }),
		}

		local on_attach = function(client, bufnr) --<<<<<<<
			if client:supports_method("textDocument/completion") then
				vim.cmd([[set completeopt+=menuone,noselect,popup]])
				local chars = {}
				for i = 32, 126 do
					table.insert(chars, string.char(i))
				end
				client.server_capabilities.completionProvider.triggerCharacters = chars
				vim.lsp.completion.enable(true, client.id, bufnr, {
					autotrigger = true,
					convert = function(item)
						return { abbr = item.label:gsub("%b()", "") }
					end,
				})
			end

			-- vim.lsp.completion.enable(true, client.id, bufnr, {
			-- 	autotrigger = true,
			-- 	convert = function(item)
			-- 		return { abbr = item.label:gsub("%b()", "") }
			-- 	end,
			-- })
		end
		require("mason").setup()
		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					lspconfig[server_name].setup({
						on_attach = on_attach, --<<<<<<<
						capabilities = capabilities,
						handlers = handlers,
					})
				end,
				lua_ls = function()
					lspconfig.lua_ls.setup({
						on_attach = on_attach, --<<<<<<<
						capabilities = capabilities,
						handlers = handlers,
						settings = {
							Lua = {
								runtime = {
									version = "LuaJIT",
								},
								diagnostics = {
									globals = { "vim" },
								},
								workspace = {
									library = {
										vim.env.VIMRUNTIME,
									},
								},
							},
						},
					})
				end,
				ts_ls = function()
					require("typescript-tools").setup({
						handlers = {
							["textDocument/publishDiagnostics"] = require("typescript-tools.api").filter_diagnostics(
								-- Ignore 'This may be converted to an async function' diagnostics.
								{ 80001 }
							),
						},
					})
				end,

				-- vim.api.nvim_create_autocmd("LspAttach", {
				-- 	callback = function(ev)
				-- 		local client = vim.lsp.get_client_by_id(ev.data.client_id)
				-- 		if client:supports_method("textDocument/completion") then
				-- 			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
				-- 		end
				-- 	end,
				-- }),
			},
		})
	end,
}
