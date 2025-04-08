vim.g.mapleader = " "

--			COLEMAK BETTER MOTION
vim.keymap.set({ "n", "v" }, "n", "j", { noremap = true })
vim.keymap.set({ "n", "v" }, "e", "k", { noremap = true })
vim.keymap.set({ "n", "v" }, "i", "l", { noremap = true })
vim.keymap.set({ "n", "v" }, "l", "i", { noremap = true })

--			FILES EXPLORER
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree reveal_force_cwd<CR>")
--			ALPHA DASH_BOARD
vim.keymap.set("n", "<leader>ad", "<Cmd>Alpha<CR>")
--			TABS
vim.keymap.set({ "n" }, "<leader>tn", vim.cmd.tabnew)
vim.keymap.set({ "n" }, "<leader>tc", vim.cmd.tabclose)
vim.keymap.set({ "n" }, "<leader>ti", vim.cmd.tabnext)
vim.keymap.set({ "n" }, "<leader>th", vim.cmd.tabprevious)

--			WINDOWS MOTION
vim.keymap.set({ "n", "v" }, "<leader>wn", "<C-W>j")
vim.keymap.set({ "n", "v" }, "<leader>we", "<C-W>k")
vim.keymap.set({ "n", "v" }, "<leader>wi", "<C-W>l")
vim.keymap.set({ "n", "v" }, "<leader>wh", "<C-W>h")
vim.keymap.set({ "n", "v" }, "<leader>wo", vim.cmd.only)

--			SPLIT
vim.keymap.set({ "n" }, "<leader>sv", vim.cmd.vsplit)
vim.keymap.set({ "n" }, "<leader>sh", vim.cmd.split)

--			BETTER ESCAPE
vim.keymap.set({ "n", "v", "i" }, "<leader>x", "<ESC>")
--			BETTER UNDO
vim.keymap.set({ "n" }, "U", "<C-r>")
--			BETTER WRITE
vim.keymap.set({ "n" }, "U", "<C-r>")
--			NO HIGHLIGHT
vim.keymap.set({ "n", "v" }, "<leader>no", vim.cmd.nohl)

--			mass rename (not working )
vim.keymap.set("n", "<leader>vrn", ":IncRename ")
