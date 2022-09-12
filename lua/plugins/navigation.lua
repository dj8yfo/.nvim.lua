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
		'tversteeg/registers.nvim', 
		config = function()
			vim.g.registers_insert_mode = 0
			vim.g.registers_paste_in_normal_mode = 2
			vim.g.registers_show = "abcdefghij*+\"-/_=#%.0123456789klmnopqrstuvwxyz:"
		end
	})

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
			vim.cmd[[nmap <c-l> <Plug>(easymotion-f)]]
			vim.cmd[[xmap <c-l> <Plug>(easymotion-f)]]
			vim.cmd[[nmap <c-h> <Plug>(easymotion-F)]]
			vim.cmd[[xmap <c-h> <Plug>(easymotion-F)]]

			vim.cmd[[nmap s <Plug>(easymotion-overwin-f2)]]
			vim.cmd[[xmap s <Plug>(easymotion-bd-f2)]]
			vim.cmd[[omap s <Plug>(easymotion-bd-f2)]]
			vim.g.EasyMotion_smartcase = 1 
		end,
	})


	use('thinca/vim-visualstar')
	use('tpope/vim-unimpaired')
	use('MattesGroeger/vim-bookmarks')
	use({ 
		'tom-anders/telescope-vim-bookmarks.nvim' ,
		config = function()
			local map = require('settings.utils').map
			map('n', '<leader>ma', [[<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>]], { silent = true})
			map('n', '<leader>mf', [[<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>]], { silent = true})
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
		'preservim/tagbar',
	
		config = function()
			vim.cmd[[let g:rust_use_custom_ctags_defs = 1]]
			vim.cmd[[let g:tagbar_highlight_method = "nearest"]]
			vim.cmd[[let g:tagbar_width = 55]]



			local opts = { noremap=true, silent=true }
			vim.api.nvim_set_keymap('n', [[gk]], '<cmd>:TagbarOpen fj<CR>', opts)
			vim.api.nvim_set_keymap('n', [[gK]], '<cmd>:TagbarClose<CR>', opts)


			vim.cmd[[
				let g:tagbar_type_rust = {
				  \ 'ctagsbin' : '/usr/bin/ctags',
				  \ 'ctagstype' : 'rust',
				  \ 'kinds' : [
					  \ 'n:modules',
					  \ 's:structures:1',
					  \ 'i:interfaces',
					  \ 'c:implementations',
					  \ 'f:functions:1',
					  \ 'g:enumerations:1',
					  \ 't:type aliases:1:0',
					  \ 'v:constants:1:0',
					  \ 'M:macros:1',
					  \ 'm:fields:1:0',
					  \ 'e:enum variants:1:0',
					  \ 'P:methods:1',
				  \ ],
				  \ 'sro': '::',
				  \ 'kind2scope' : {
					  \ 'n': 'module',
					  \ 's': 'struct',
					  \ 'i': 'interface',
					  \ 'c': 'implementation',
					  \ 'f': 'function',
					  \ 'g': 'enum',
					  \ 't': 'typedef',
					  \ 'v': 'variable',
					  \ 'M': 'macro',
					  \ 'm': 'field',
					  \ 'e': 'enumerator',
					  \ 'P': 'method',
				  \ },
				\ }
			]]
		end,
	})
end
-- }}}
return { init = init }
