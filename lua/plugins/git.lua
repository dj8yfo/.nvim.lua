-- {{{ init
local function init(use)
	use({
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = [[require('settings.plugins.diffview')]],
	})
	use 'tpope/vim-fugitive'
end
-- }}}
return { init = init }
