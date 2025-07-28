return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({

			options = {
				mode = "buffers", -- set to "tabs" to only show tabpages instead
				themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
				numbers = function(opts)
					return string.format("%s", opts.lower(opts.ordinal))
				end,
				truncate_names = true, -- whether or not tab names should be truncated
				tab_size = 10,
				close_command = "bdelete %d", -- can be a string | function, | false see "Mouse actions"
				right_mouse_command = "bdelete %d", -- can be a string | function | false, see "Mouse actions"
				left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
				diagnostics = "nvim_lsp",
				diagnostics_update_on_event = true, -- use nvim's diagnostic handler
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
						separator = true,
					},
					{
						filetype = "undotree",
						text = "Undo tree",
						text_align = "center",
						separator = true,
					},
				},
				color_icons = true,
				show_buffer_close_icons = false,
				hover = {
					enabled = true,
					delay = 200,
					reveal = { "close" },
				},
			},
		})
	end,
}
