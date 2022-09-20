-- {{{ init
local function init(use)

    use 'elvessousa/elf-monokai-pro'
    use 'patstockwell/vim-monokai-tasty'
	use 'arzg/vim-colors-xcode'
	use 'ghifarit53/tokyonight-vim'
	use 'humanoid-colors/vim-humanoid-colorscheme'
	use 'artanikin/vim-synthwave84'
	use 'itchyny/landscape.vim' 
	use 'veloce/vim-aldmeris'
	use 'Zabanaa/neuromancer.vim'
	use 'Lewiky/moonokai'
	use 'mrtazz/molokai.vim'
	use 'thedenisnikulin/vim-cyberpunk'
	use {
		"mcchrish/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		requires = "rktjmp/lush.nvim"
	}

end
-- }}}
return { init = init }
