-- {{{ init
local function init(use)
	use({
		'Yggdroot/indentLine',
		config = function()
			vim.g.indentLine_char_list = {'|', '¦', '┆', '┊'}
			vim.g.indentLine_showFirstIndentLevel = 1
			
		end,
	})

	use({
		'haya14busa/vim-edgemotion',
		config = function()
			local map = require('settings.utils').map
			local silent = { silent = true }
			vim.cmd [[map <C-j> <Plug>(edgemotion-j)]]
			vim.cmd [[map <C-k> <Plug>(edgemotion-k)]]
		end,
	})
end
-- }}}
return { init = init }


