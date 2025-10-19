return {
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope diagnostics" })
			vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
			vim.keymap.set("n", "<leader>fc", builtin.colorscheme, { desc = "Telescope colorschemes" })
		end,
	},
	require("telescope").setup({

		defaults = {
			mappings = {
				n = {
					-- Colemak change
					["n"] = require("telescope.actions").move_selection_next,
					["d"] = require("telescope.actions").delete_buffer,
					["e"] = require("telescope.actions").move_selection_previous,

					-- Nice easy exit
					["q"] = function(prompt_bufnr)
						require("telescope.actions").close(prompt_bufnr)
					end,
				},
			},
			layout_config = { preview_width = 0.6 },
			path_display = { "smart" },
		},

		pickers = {
			buffers = {
				-- initial_mode = "normal",
				sort_lastused = true,
				sort_mru = true,
				show_all_buffers = false,
				path_display = { "filename_first" },
			},
			live_grep = {
				path_display = { "shorten" },
				--	search_dirs = { "./*" },
				glob_pattern = {
					"!node_modules",
				},
			},

			colorscheme = { enable_preview = true },
		},
	}),
}
