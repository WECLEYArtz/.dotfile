-- return {
--     "goolord/alpha-nvim",
--     -- dependencies = { 'echasnovski/mini.icons' },
--     dependencies = { 'nvim-tree/nvim-web-devicons' },
--     config = function()
--         local dashboard = require("alpha.themes.dashboard")
--         -- available: devicons, mini, default is mini
--         require("alpha").setup(
--         dashboard.config
--         )
--     end,

return {
	"goolord/alpha-nvim",
	dependencies = { "echasnovski/mini.icons" },
	-- dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local vf = vim.fn --less headache
		local theta = require("alpha.themes.theta")
		local dashboard = require("alpha.themes.dashboard")
		local config = vf.resolve(vf.stdpath("config"))
		local path_old = ""
		local log = vim.print

		-- -- available: devicons, mini, default is mini
		-- -- if provider not loaded and enabled is true, it will try to use another provider
		theta.file_icons.provider = "devicons"
		theta.buttons.val = {
			dashboard.button("o", "  New file", "<cmd>ene<CR>"),
			-- dashboard.button("SPC f f", "󰈞  Find file"),
			-- dashboard.button("SPC f g", "󰊄  Live grep"),

			dashboard.button("c", "  Configuration", function()
				if path_old == "" then
					if vf.getcwd() == config then
						log("[Alpha]: Already in config dir")
						return
					end
					path_old = vf.getcwd()
				end

				if vf.getcwd() == config then
					vim.cmd("cd " .. path_old)
					log("[Alpha]: Reverted back to " .. path_old .. " ")
				else
					vim.cmd("cd " .. config)
					log("[Alpha]: Switched to Configurations directory  ")
				end
			end),
			dashboard.button("m", "└─   remaping", "<cmd>e " .. config .. "/lua/neowec/remap.lua<CR>"),
			dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
			dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
		}
		require("alpha").setup(
			theta.config
			-- dashboard.config
		)
	end,
}
--├─
--└─
