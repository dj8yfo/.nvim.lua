-- {{{ init
local function init(use)

	use 'sainnhe/sonokai'
	use 'ghifarit53/tokyonight-vim'

	use({
		'wuelnerdotexe/vim-enfocado', 
		config = function()
			vim.cmd[[let g:enfocado_style = 'neon']]
		end
	})


end
-- }}}
return { init = init }

