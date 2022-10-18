-- {{{ init
local function init(use)
	use({
		'mhinz/vim-sayonara',
		setup = function()
			local map = require('settings.utils').map
			map('n', '<m-q>', [[<cmd>Sayonara<CR>]], { silent = true})
		end,
		cmd = 'Sayonara',
	})

	use('romainl/vim-cool')

	use({
		'lambdalisue/fern.vim', 
		branch = 'main',
		config = function()
			local map = require('settings.utils').map
			map('n', 'g\\', [[<cmd>Fern . -reveal=%<CR>]], { silent = true})
		end
	})
	use('justinmk/vim-dirvish')
	use('kshenoy/vim-signature')

	use({
		'karb94/neoscroll.nvim', 
		config = function()
			require('neoscroll').setup()
		end
	})

	use 'chaoren/vim-wordmotion'

	use({ 
		'easymotion/vim-easymotion' ,
		config = function()
			vim.cmd[[nmap gs <Plug>(easymotion-overwin-f2)]]
			vim.cmd[[xmap gs <Plug>(easymotion-bd-f2)]]
			vim.cmd[[omap gs <Plug>(easymotion-bd-f2)]]
			vim.g.EasyMotion_smartcase = 1 
		end,
	})

	use({ 
		'justinmk/vim-sneak' ,
		config = function()
		end,
	})



	use('thinca/vim-visualstar')
	use('tpope/vim-unimpaired')

	use({ 
		'MattesGroeger/vim-bookmarks',
	
		config = function()
			vim.cmd[[let g:bookmark_save_per_working_dir = 1]]
			vim.cmd[[let g:bookmark_auto_save = 1]]
			
		end,
	})

	use({ 
		'christoomey/vim-tmux-navigator',
	
		config = function()
			vim.cmd[[let g:tmux_navigator_no_mappings = 1]]
			vim.cmd[[let g:tmux_navigator_disable_when_zoomed = 1]]

			vim.cmd[[nnoremap <silent> <m-h> :TmuxNavigateLeft<cr>]]
			vim.cmd[[nnoremap <silent> <m-j> :TmuxNavigateDown<cr>]]
			vim.cmd[[nnoremap <silent> <m-k> :TmuxNavigateUp<cr>]]
			vim.cmd[[nnoremap <silent> <m-l> :TmuxNavigateRight<cr>]]
		end,
	})


	use({ 
		'simrat39/symbols-outline.nvim',
	
		config = function()
			require("symbols-outline").setup({position = 'left'})
			local opts = { noremap=true, silent=true }

			vim.cmd[[nnoremap <silent> gk :SymbolsOutlineClose<cr>:SymbolsOutlineOpen<cr>]]
			vim.cmd[[nnoremap <silent> gK :SymbolsOutline<cr>]]

		end,
	})

	use({ 
		'jeetsukumaran/vim-indentwise',
	
		config = function()
			vim.cmd[[map [s <Plug>(IndentWisePreviousLesserIndent)]]
			vim.cmd[[map ]s <Plug>(IndentWiseNextLesserIndent)]]

			vim.cmd[[map [w <Plug>(IndentWisePreviousGreaterIndent)]]
			vim.cmd[[map ]w <Plug>(IndentWiseNextGreaterIndent)]]
		end,
	})
end
-- }}}
return { init = init }
