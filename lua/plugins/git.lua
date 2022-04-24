-- {{{ init
local function init(use)
	use({
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = [[require('settings.plugins.diffview')]],
	})
end
-- }}}
return { init = init }
