-- {{{ init
local function init(use)
	use ('hrsh7th/cmp-nvim-lsp')
	use ('hrsh7th/cmp-nvim-lsp-signature-help')
	use('lukas-reineke/cmp-under-comparator')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')

	use ({
		'L3MON4D3/LuaSnip',
		config = function()
			require("luasnip.loaders.from_snipmate").lazy_load()
		end,
	})

	use ({
		'hrsh7th/nvim-cmp',
		requires = {

			'L3MON4D3/LuaSnip',
			{ 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp' },
			{'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' },
			{'hrsh7th/cmp-nvim-lsp-signature-help', after = 'nvim-cmp' },
			{'lukas-reineke/cmp-under-comparator', after = 'nvim-cmp' },

			{ 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' },
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

