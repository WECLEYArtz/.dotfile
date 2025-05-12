return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
	},
	config = function()
		-- Configure a server via `vim.lsp.config()` or `{after/}lsp/lua_ls.lua`
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = {
							"vim",
							"require",
						},
					},
				},
			},
		})

		require("mason").setup()
		-- Note: `nvim-lspconfig` needs to be in 'runtimepath' by the time you set up mason-lspconfig.nvim
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls" },
		})
	end,
}
