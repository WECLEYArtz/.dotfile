return {
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
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
		},
		pickers = {
			buffers = {
				-- initial_mode = "normal",
				sort_lastused = true,
				sort_mru = true,
				show_all_buffers = false,
			},
		},
	}),
}
