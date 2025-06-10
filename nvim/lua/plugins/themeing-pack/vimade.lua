return {
	"TaDaa/vimade",
	config = function()
		require("vimade").setup({
			blocklist = {
				neotree = {
					buf_opts = {
						filetype = {
							"neo-tree",
							"undotree",
						},
					},
				},
			},
		})
	end,
}
