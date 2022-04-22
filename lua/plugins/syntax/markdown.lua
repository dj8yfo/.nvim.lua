
-- {{{ init
local function init(use)

	use('godlygeek/tabular')
	use({
		'preservim/vim-markdown',
		config = function()
			vim.g.vim_markdown_folding_style_pythonic = 1
			vim.g.vim_markdown_folding_level = 6
			
		end,
	})



end
-- }}}
return { init = init }
