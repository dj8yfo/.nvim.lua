-- {{{ init
local function init(use)
	use ('hrsh7th/cmp-nvim-lsp')
	use ('hrsh7th/cmp-nvim-lsp-signature-help')
	use('lukas-reineke/cmp-under-comparator')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')

	use ({
		'hrsh7th/nvim-cmp',
		requires = {

			{'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' },
			{'hrsh7th/cmp-nvim-lsp-signature-help', after = 'nvim-cmp' },
			{'lukas-reineke/cmp-under-comparator', after = 'nvim-cmp' },

			{ 'hrsh7th/cmp-buffer', after = 'nvim-cmp' },
			{ 'hrsh7th/cmp-path', after = 'nvim-cmp' },

		},
		config = [[require(
		'settings.plugins.completion'
		)]],
		event = 'InsertEnter *',
	})
end
-- }}}
return { init = init }

