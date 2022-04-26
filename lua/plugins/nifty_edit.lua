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
		'azabiong/vim-highlighter' ,
		config = function()
		end,
	})
	use 'tommcdo/vim-exchange'


end
-- }}}
return { init = init }
