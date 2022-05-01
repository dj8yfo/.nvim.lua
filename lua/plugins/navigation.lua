-- {{{ init
local function init(use)
	use({
		'mhinz/vim-sayonara',
		setup = function()
			local map = require('settings.utils').map
			map('n', '<c-q>', [[<cmd>Sayonara<CR>]], { silent = true})
		end,
		cmd = 'Sayonara',
	})

	use('romainl/vim-cool')

	use({
		'lambdalisue/fern.vim', 
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
		'christoomey/vim-system-copy', 
		config = function()
			vim.cmd [[let g:system_copy#copy_command = 'wl-copy']]
			vim.cmd [[let g:system_copy#paste_command = 'wl-paste -n']]
		end
	})
	use 'chaoren/vim-wordmotion'
	use({ 
		'justinmk/vim-sneak' ,
		config = function()
			vim.cmd[[nmap gs <Plug>Sneak_S]]
			vim.cmd[[xmap gs <Plug>Sneak_S]]
			vim.cmd[[let g:sneak#use_ic_scs = 1]]
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
end
-- }}}
return { init = init }
