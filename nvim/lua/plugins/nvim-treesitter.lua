return{
	"nvim-treesitter/playground",
	{
		"nvim-treesitter/nvim-treesitter",
		config = function ()
			require('nvim-treesitter.configs').setup {
				ensure_installed = {
					"javascript",
					"typescript",
					'tsx',
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"markdown",
					"markdown_inline",
					'astro',
					'html'
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
					disable = {"astro"}

					-- additional_vim_regex_highlighting = true
				},
				indent = {
					enable = false,
				},
			}
		end
	}
}
