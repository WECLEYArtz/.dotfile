vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 10

vim.opt.updatetime = 1000
vim.opt.colorcolumn = "80" -- what does this even do?

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.inccommand = "split" -- better sub editing feedback

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.ignorecase = true -- easier search
vim.opt.formatoptions:remove({ "t", "c", "r", "o" })

vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"

-- vim.api.nvim_command('filetype indent off')
-- vim.opt.smartindent = false

vim.opt.foldcolumn = "1"
vim.opt.winborder = single

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual" })
	end,
})
