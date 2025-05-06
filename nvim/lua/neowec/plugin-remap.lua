local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<S-TAB>"] = cmp.mapping.select_prev_item(cmp_select),
		["<TAB>"] = cmp.mapping.select_next_item(cmp_select),

		["E"] = cmp.mapping.scroll_docs(-4),
		["N"] = cmp.mapping.scroll_docs(4),

		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["Y"] = cmp.mapping.confirm({ select = true }),
	}),
})
