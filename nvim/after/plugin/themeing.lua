vim.g.neovide_opacity = 0.9
-- vim.cmd("colorscheme no-clown-fiesta")
vim.cmd("colorscheme nightfox")

local dark = "#020202"
-- local nc = "#0a0a0a"

-- make new united background color group
vim.api.nvim_set_hl(0, "Abnormal", { bg = dark })

-- make all transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

-- per-group backgound:
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = dark })
vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = dark })
vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = dark })

-- per-filetype backgound:
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "undotree", "diff" },
	callback = function()
		vim.opt_local.winhighlight = "Normal:Abnormal"
	end,
})
