-- {{{ init
local function init(use)
	use({
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = [[require('settings.plugins.diffview')]],
	})
	use({
		'tpope/vim-fugitive',
		config = function()
			local map = require('settings.utils').map
			local silent = { silent = true }
			map('n', 'gC', [[<cmd>Git commit<CR>]], silent)
		end
	})
	use ({
		'lewis6991/gitsigns.nvim',
		config = function()
			require('settings.plugins.gitsigns')
		end
	})
end
-- }}}
return { init = init }
