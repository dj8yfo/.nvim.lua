-- {{{ init
local function init(use)

	use({
		'haya14busa/vim-edgemotion',
		config = function()
			local map = require('settings.utils').map
			local silent = { silent = true }
			vim.cmd [[map <C-j> <Plug>(edgemotion-j)]]
			vim.cmd [[map <C-k> <Plug>(edgemotion-k)]]
		end,
	})

	use ({
		'nanozuki/tabby.nvim',
		config = function()
			local theme = {
			  fill = 'TabLineFill',
			  -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
			  head = 'TabLine',
			  current_tab = 'TabLineSel',
			  tab = 'TabLine',
			  win = 'TabLine',
			  tail = 'TabLine',
			}
			require('tabby.tabline').set(function(line)
			  return {
				{
				  { '  ', hl = theme.head },
				  line.sep('', theme.head, theme.fill),
				},
				line.tabs().foreach(function(tab)
				  local hl = tab.is_current() and theme.current_tab or theme.tab
				  return {
					line.sep('', hl, theme.fill),
					tab.is_current() and '' or '',
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
			end)
		end
	})

	use ({ 'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require('lualine').setup()
		end, 
	})

	use ({
		"jmckiern/vim-venter",
		config = function()

			vim.cmd[[nmap gz :VenterToggle<CR>]]
			vim.cmd[[let g:venter_use_textwidth = 1]]
			vim.cmd[[let g:venter_disable_vertsplit = 1]]


		end

	})
end
-- }}}
return { init = init }


