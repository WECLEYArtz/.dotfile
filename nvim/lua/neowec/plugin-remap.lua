--			LSP Cmp yes
local cmp = require('cmp');
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<A-[>'] = cmp.mapping.select_prev_item(cmp_select),
		['<A-]>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-y>'] = cmp.mapping.confirm({select = true}),

		-- ['<C-[>'] = cmp.mapping.select_prev_item(cmp_select),
		-- ['<C-]>'] = cmp.mapping.select_next_item(cmp_select),
		-- ['<C-y>'] = cmp.mapping.confirm({select = true}),

		['<C-Space>'] = cmp.mapping.complete(),
	}),
})
