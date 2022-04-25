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
			vim.cmd [[let g:system_copy#paste_command = 'wl-paste']]
		end
	})
	use({'chaoren/vim-wordmotion', 'justinmk/vim-sneak' })
	use('thinca/vim-visualstar')
	use('tpope/vim-unimpaired')
end
-- }}}
return { init = init }
