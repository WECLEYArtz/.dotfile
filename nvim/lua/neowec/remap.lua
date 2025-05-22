vim.g.mapleader = " "

--			COLEMAK BETTER MOTION
vim.g.Arrows = false
function ArrowsToggle(arg)
	if arg ~= nil and (type(arg) == "boolean") and (arg == vim.g.Arrows) then
		return
	end

	if not vim.g.Arrows then
		vim.keymap.set({ "n", "v" }, "n", "<Down>", { noremap = true })
		vim.keymap.set({ "n", "v" }, "e", "<Up>", { noremap = true })
		vim.keymap.set({ "n", "v" }, "i", "<Right>", { noremap = true })
		vim.opt.cursorline = false
	else
		vim.keymap.del({ "n", "v" }, "n")
		vim.keymap.del({ "n", "v" }, "e")
		vim.keymap.del({ "n", "v" }, "i")
		vim.opt.cursorline = true
	end

	vim.g.Arrows = not vim.g.Arrows
end

vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.keymap.set({ "n", "v" }, "<leader>.", function()
			ArrowsToggle()
		end, { noremap = true, silent = true })
	end,
})
ArrowsToggle() -- Toggle arrows to true;

--			FILES EXPLORER
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree reveal_force_cwd<CR>")
--			ALPHA DASH_BOARD
vim.keymap.set("n", "<leader>ad", "<Cmd>Alpha<CR>")
--			TABS (abandoned in favor of BUFFERS)
-- vim.keymap.set({ "n" }, "<leader>nt", vim.cmd.tabnew)
-- vim.keymap.set({ "n" }, "<leader>xt", vim.cmd.tabclose)
-- vim.keymap.set({ "n" }, "<leader>t", vim.cmd.tabnext)
-- vim.keymap.set({ "n" }, "<leader>T", vim.cmd.tabprevious)

--			BUFFERS
vim.keymap.set({ "n" }, "<leader>b", vim.cmd.bnext)
vim.keymap.set({ "n" }, "<leader>B", vim.cmd.bprevious)
vim.keymap.set({ "n" }, "<leader>db", vim.cmd.bd)
--			WINDOWS MOTION
vim.keymap.set("n", "<leader>wn", "<C-W>j")
vim.keymap.set("n", "<leader>we", "<C-W>k")
vim.keymap.set("n", "<leader>wi", "<C-W>l")
vim.keymap.set("n", "<leader>wh", "<C-W>h")
vim.keymap.set("n", "<leader>wo", vim.cmd.only)

--			new WINDOWS MOTION
vim.keymap.set("n", "<leader>wt", "<C-W>T") --move window to new tab, damn so good.
vim.keymap.set("n", "<leader>nw", "<C-W><C-N>")
vim.keymap.set("n", "<leader>wN", "<C-W>J")
vim.keymap.set("n", "<leader>wE", "<C-W>K")
vim.keymap.set("n", "<leader>wI", "<C-W>L")
vim.keymap.set("n", "<leader>wH", "<C-W>H")
vim.keymap.set("n", "<leader>wo", vim.cmd.only)

--			SPLIT
vim.keymap.set("n", "<leader>sv", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>sh", vim.cmd.split)

--			BETTER ESCAPE
vim.keymap.set({ "n", "v", "i" }, "<leader>x", "<Esc>:lua ArrowsToggle(true)<CR>")
--			BETTER UNDO
vim.keymap.set("n", "U", "<C-r>")

--			BETTER WRITE
vim.keymap.set("n", "<leader>ww", vim.cmd.write)
--			BETTER QUIT
vim.keymap.set("n", "<leader>q", vim.cmd.quit)
vim.keymap.set("n", "<leader>Q", vim.cmd.quitall)

--			NO HIGHLIGHT
vim.keymap.set("n", "<leader>no", vim.cmd.nohl)
