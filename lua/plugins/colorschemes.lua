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
	use 'ray-x/aurora'
	use 'yonlu/omni.vim'
	use 'jnurmine/Zenburn'
	use 'sjl/badwolf'
	use 'josuegaleas/jay'
	use "protesilaos/tempus-themes-vim"
	use 'fholgado/Molokai2'
	use 'marko-cerovac/material.nvim'
	use({
	  'glepnir/zephyr-nvim',
	  requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
	})
	use 'theniceboy/nvim-deus'
end
-- }}}
return { init = init }
