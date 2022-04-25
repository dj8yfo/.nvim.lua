-- {{{ init
local function init(use)
    use('tpope/vim-surround')
	use ({
		'terrortylor/nvim-comment',
		config = function()
			require('nvim_comment').setup()
		end,
	})
	use ({
		"Pocco81/HighStr.nvim",
		config = function()
			require('settings.plugins.high_str')
		end,
	})


end
-- }}}
return { init = init }
