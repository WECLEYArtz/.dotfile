return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/lazydev.nvim",
	},
	config = function()

		require("lspconfig").lua_ls.setup({})
	end
}
