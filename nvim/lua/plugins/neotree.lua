return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("neo-tree").setup({
			event_handlers = {
				{
					event = "file_open_requested",
					handler = function()
						-- auto close
						-- vim.cmd("Neotree close")
						-- OR
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
			buffers = {
				follow_current_file = {
					enable = true,
				},
			},
			mapping_options = {
				noremap = true,
				nowait = true,
			},
			window = {
				mappings = {
					["="] = "toggle_auto_expand_width",
					["e"] = "noop", -- allow colemak motion remap to work
					["<space>"] = "noop", -- allow leader to work as toggle_node, still dont understand how it exactly works
					["<leader>"] = "open",
					["P"] = {
						"toggle_preview",
						config = {
							use_float = false,
							-- use_image_nvim = true,
							title = "Neo-tree Preview",
						},
					},
				},
			},
		})
	end,
}
