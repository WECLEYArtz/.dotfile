return {
	"nvim-treesitter/playground",
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
					disable = { "astro" },

					-- additional_vim_regex_highlighting = true
				},
				indent = {
					enable = false,
				},
			})
		end,
	},
}
