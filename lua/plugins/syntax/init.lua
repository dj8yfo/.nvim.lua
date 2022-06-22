-- {{{ init
local function init(use)

	use 'RRethy/nvim-treesitter-textsubjects'
	use('nvim-treesitter/nvim-treesitter-refactor')
	use ('p00f/nvim-ts-rainbow')
	use ({
		'nvim-treesitter/nvim-treesitter',
		-- commit = '94255915e659b83e8c57fd2ec0d6791995326f66',
		requires = {
			'nvim-treesitter/nvim-treesitter-refactor',
		},
		config = [[require('settings.plugins.treesitter')]],
		run = ':TSUpdate',
	})

	require('plugins.syntax.markdown').init(use)
end
-- }}}
return { init = init }

