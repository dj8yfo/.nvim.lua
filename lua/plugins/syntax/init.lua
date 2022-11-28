-- {{{ init
local function init(use)

	use ('p00f/nvim-ts-rainbow')
	use ({
		'nvim-treesitter/nvim-treesitter',
		-- commit = '94255915e659b83e8c57fd2ec0d6791995326f66',
		config = [[require('settings.plugins.treesitter')]],
		run = ':TSUpdate',
	})
	use 'imsnif/kdl.vim'

	require('plugins.syntax.markdown').init(use)
end
-- }}}
return { init = init }

