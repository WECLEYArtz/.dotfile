local vo = vim.opt

vo.nu = true
vo.relativenumber = true

vo.scrolloff = 10

vo.updatetime = 50 -- what does this even do?
vo.colorcolumn = "80" -- what does this even do?

vo.splitbelow = true
vo.splitright = true
vo.inccommand = "split" -- better sub editing feedback

vo.tabstop = 4
vo.shiftwidth = 4



vo.ignorecase = true -- easier search
vo.formatoptions:remove {"t","c","r","o"}

-- vim.opt.termguicolors = true

vo.clipboard = "unnamedplus"
