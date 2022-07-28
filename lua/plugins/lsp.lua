-- {{{ init
local function init(use)
	use({
		{
			'neovim/nvim-lspconfig',
			config = [[require('settings.plugins.lspconfig')]],
		},
		{
			'nvim-lua/lsp-status.nvim',
			config = [[require('settings.plugins.lsp-status')]],
		},
		{
			'simrat39/rust-tools.nvim',
			config = [[require('settings.plugins.lspconfig.langs.rust-tools')]],
		},
		{
			'folke/trouble.nvim',
			config = function()
				local trouble = require 'trouble'
				trouble.setup()
			end,
		},
		{
			'kosayoda/nvim-lightbulb',
			setup = function()
				vim.api.nvim_command 'hi link LightBulbFloatWin YellowFloat'
				vim.api.nvim_command 'hi link LightBulbVirtualText YellowFloat'
			end,
		},
	})
end
-- }}}
return { init = init }
