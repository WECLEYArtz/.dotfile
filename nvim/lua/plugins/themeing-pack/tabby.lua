return {
	'nanozuki/tabby.nvim',
	-- event = 'VimEnter', -- if you want lazy load, see below
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		local theme = {
			-- fill = 'TabLineFill',
			-- Also you can do this:
			fill = { fg='#f2e9de', bg='#020202'},
			head = 'TabLine',
			current_tab = { fg='#020202', bg='#00dfff'},
			tab = 'TabLine',
			win = 'TabLine',
			tail = 'TabLine',
		}
		require('tabby').setup({
			preset = 'active_wins_at_tail',
			option = {
				theme = {
					fill = 'TabLineFill',       -- tabline background
					head = 'TabLine',           -- head element highlight
					current_tab = 'TabLineSel', -- current tab label highlight
					tab = 'TabLine',            -- other tab label highlight
					win = 'TabLine',            -- window highlight
					tail = 'TabLine',           -- tail element highlight
				},
				nerdfont = true,              -- whether use nerdfont
				lualine_theme = nil,          -- lualine theme name
				-- tab_name = {
					--     name_fallback = function(tabid)
						--         return tab.name() 
						--     end,
						-- },
						buf_name = {
							-- mode = 'shorten',
							-- mode = 'tail',
							-- mode = 'relative',
							-- mode = 'unique',
						},
					},
					line = function(line)
						return {
							{
								{ '  ', hl = theme.head },
								line.sep('', theme.head, theme.fill),
							},
							line.tabs().foreach(function(tab)
								local hl = tab.is_current() and theme.current_tab or theme.tab
								return {
									line.sep('', hl, theme.fill),
									tab.is_current() and '' or '󰆣',
									tab.number(),
									tab.name(),
									tab.close_btn(''),
									line.sep('', hl, theme.fill),
									hl = hl,
									margin = ' ',
								}
							end),
							line.spacer(),
							line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
								return {
									line.sep('', theme.win, theme.fill),
									win.is_current() and '' or '',
									win.buf_name(),
									line.sep('', theme.win, theme.fill),
									hl = theme.win,
									margin = ' ',
								}
							end),
							{
								line.sep('', theme.tail, theme.fill),
								{ '  ', hl = theme.tail },
							},
							hl = theme.fill,
						}
					end,
					-- option = {}, -- setup modules' option,
				})   -- configs...
			end,
		}
