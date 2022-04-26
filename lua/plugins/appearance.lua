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
end
-- }}}
return { init = init }


