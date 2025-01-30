return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
		},
		config = function()

			vim.api.nvim_create_autocmd('LspAttach', {
				group = vim.api.nvim_create_augroup('user_lsp_attach', {clear = true}),
				callback = function(event)
					local opts = {buffer = event.buf}

					vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
					vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)

					vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
					vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)

					vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
					vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)

					vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
					vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
					-- vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)

					vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
				end,
			})


			-- Theme

			local lspconfig = require('lspconfig')


			lspconfig.jsonls.setup({
				filetypes = { 'json', 'jsonc' },
				init_options = {
					provideFormatter = true,
				},
			})

			local cmp = require('cmp')
			local cmp_select = {behavior = cmp.SelectBehavior.Select}

			cmp.setup({
				sources = cmp.config.sources({
					{name = 'nvim_lsp'},
					{name = 'luasnip'},
				}, {
					{name = 'buffer'},
				}),
				mapping = cmp.mapping.preset.insert({
					['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
					['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
					['<C-y>'] = cmp.mapping.confirm({select = true}),
					['<C-Space>'] = cmp.mapping.complete(),
				}),
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
			})
		end,
	}
}
