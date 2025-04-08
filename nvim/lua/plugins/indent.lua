return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
	config = function()
		vim.g.indent_blankline_max_indent_increase = 1
		local highlight = {
			"CursorColumn",
			"Whitespace",
		}

		require("ibl").setup({
			-- scope = { highlight = { fg = "#FFFFFF" } },
			indent = { char = "▏" },
			-- smart_indent_cap = true,
		})
	end,
}
