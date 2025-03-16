return{
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = {},
	config = function()
		local api = require("typescript-tools.api")
		require("typescript-tools").setup {
			handlers = {
				["textDocument/publishDiagnostics"] = api.filter_diagnostics(
				-- Ignore 'This may be converted to an async function' diagnostics.
				{ 80001 }
				),
			},
		}
	end,
}
