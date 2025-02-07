return{
	{
		"smjonas/inc-rename.nvim",
		config = function()
			vim.keymap.set("n", "<leader>vrn", function()
				-- requiring it to make sure inc_rename is loaded

				local ok, _ = pcall(require, "inc_rename")
				if ok then
					return ":IncRename " .. vim.fn.expand("<cword>")
				end
			end, { expr = true, silent = false, desc = "Rename" })
		end
	}
}
