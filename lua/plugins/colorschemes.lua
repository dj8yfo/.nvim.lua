-- {{{ init
local function init(use)

	use 'sainnhe/sonokai'
	use 'ghifarit53/tokyonight-vim'

	use 'christophermca/meta5'
	use({
		'wuelnerdotexe/vim-enfocado', 
		config = function()
			vim.cmd[[let g:enfocado_style = 'neon']]
		end
	})
	use 'patstockwell/vim-monokai-tasty'
	use 'kjssad/quantum.vim'
	use 'evturn/cosmic-barf'


end
-- }}}
return { init = init }

