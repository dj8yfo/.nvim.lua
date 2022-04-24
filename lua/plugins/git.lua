-- {{{ init
local function init(use)
	use({
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = [[require('settings.plugins.diffview')]],
	})
	use 'tpope/vim-fugitive'
	use ({
		'lewis6991/gitsigns.nvim',
		config = function()
			require('settings.plugins.gitsigns')
		end
	})
end
-- }}}
return { init = init }
