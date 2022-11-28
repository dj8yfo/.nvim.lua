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
		'justinmk/vim-dirvish', 
		config = function()
			vim.cmd[[nmap <leader>tc :tcd %<CR>]]
		end
	})
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
			vim.cmd[[nmap gy <Plug>(easymotion-overwin-f2)]]
			vim.cmd[[xmap gy <Plug>(easymotion-bd-f2)]]
			vim.cmd[[omap gy <Plug>(easymotion-bd-f2)]]
			vim.g.EasyMotion_smartcase = 1 
		end,
	})

	use({ 
		'justinmk/vim-sneak' ,

		config = function()
			vim.cmd[[let g:sneak#use_ic_scs = 1]]
		end,
	})



	use('thinca/vim-visualstar')
	use('tpope/vim-unimpaired')


	use({ 
		'ThePrimeagen/harpoon',
		config = function()
			require("harpoon").setup({
				-- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
				save_on_toggle = false,
				-- saves the harpoon file upon every change. disabling is unrecommended.
				save_on_change = true,
				-- set marks specific to each git branch inside git repository
				mark_branch = true,
			})
			local opts = { noremap=true, silent=true }
			vim.api.nvim_set_keymap('n', '<leader>hm', '<cmd>lua require("harpoon.mark").add_file()<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>ho', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>ht1', '<cmd>lua require("harpoon.term").gotoTerminal(1)<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>ht2', '<cmd>lua require("harpoon.term").gotoTerminal(2)<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>ht3', '<cmd>lua require("harpoon.term").gotoTerminal(3)<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>ht4', '<cmd>lua require("harpoon.term").gotoTerminal(4)<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>hq', '<cmd>Telescope harpoon marks<CR>', opts)


		end,
	})
	use({ 
		'ldelossa/litee.nvim',

		config = function()
			require('litee.lib').setup({})
		end,
	})
	use({ 
		'ldelossa/litee-bookmarks.nvim',

		config = function()
			require('litee.bookmarks').setup({})
			local opts = { noremap=true, silent=true }
			vim.api.nvim_set_keymap('n', '<leader>lo', '<cmd>LTOpenNotebook<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>lp', '<cmd>LTPanel<CR>', opts)
			vim.api.nvim_set_keymap('n', '<leader>lc', '<cmd>LTCreateBookmark<CR>', opts)
		end,
	})



	use({ 
		'simrat39/symbols-outline.nvim',

		config = function()
			require("symbols-outline").setup({position = 'right'})
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
	use 'nanotee/zoxide.vim'
end
-- }}}
return { init = init }
