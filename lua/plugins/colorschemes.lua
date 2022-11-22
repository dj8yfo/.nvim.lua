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
	use 'AlanWarren/rocket'
	use 'kjohnsen/heman'
	use 'lourenci/github-colors'
	use 'widatama/vim-phoenix'
	use 'henrybw/vim-colors-aurora'
	use 'jnurmine/Zenburn'
	use 'sjl/badwolf'
	use 'josuegaleas/jay'
end
-- }}}
return { init = init }

