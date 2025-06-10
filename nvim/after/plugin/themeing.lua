vim.cmd("colorscheme carbonfox")

local dark = "#020202"
-- local nc = "#0a0a0a"

-- make new united background color group
vim.api.nvim_set_hl(0, "Abnormal", { bg = dark })

-- make all transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

-- per-group backgound:
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = dark })

-- per-filetype backgound:
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "undotree", "diff" },
	callback = function()
		vim.opt_local.winhighlight = "Normal:Abnormal"
	end,
})
