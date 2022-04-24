-- {{{ init
local function init(use)

	use('nvim-treesitter/nvim-treesitter-refactor')
	use ('p00f/nvim-ts-rainbow')
	use ({
		'nvim-treesitter/nvim-treesitter',
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

