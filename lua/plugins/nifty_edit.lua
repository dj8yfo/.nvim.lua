-- {{{ init
local function init(use)
    use('tpope/vim-surround')
	use ({
		'terrortylor/nvim-comment',
		config = function()
			require('nvim_comment').setup()
		end,
	})
	use ({
		'azabiong/vim-highlighter' ,
		config = function()
			vim.cmd[[hi HiColor1 guifg=HotPink guibg=gray22]]
			vim.cmd[[hi HiColor2 guifg=yellow guibg=gray22]]
			vim.cmd[[hi HiColor3 guifg=GreenYellow guibg=gray22]]
			vim.cmd[[hi HiColor4 guifg=LightCyan guibg=gray22]]
			vim.cmd[[hi HiColor5 guifg=turquoise guibg=gray22]]
			vim.cmd[[hi HiColor6 guifg=gold guibg=gray22]]
			vim.cmd[[hi HiColor7 guifg=OliveDrab guibg=gray22]]
			vim.cmd[[hi HiColor8 guifg=MistyRose guibg=gray22]]
		end,
	})
	use('tommcdo/vim-exchange')

    use('kkharji/sqlite.lua')
	use {
	  "AckslD/nvim-neoclip.lua",
	  requires = {
		{'kkharji/sqlite.lua', module = 'sqlite'},
		-- you'll need at least one of these
		-- {'nvim-telescope/telescope.nvim'},
		-- {'ibhagwan/fzf-lua'},
	  },
	  config = function()
		require('neoclip').setup({
			history = 10000,
			enable_persistent_history = true,
			continuous_sync = true,
		})

		local opts = { noremap=true, silent=true }
		vim.api.nvim_set_keymap('n', '<leader>np', '<cmd>lua require("telescope").extensions.neoclip["plus"]()<CR>', opts)
		vim.api.nvim_set_keymap('n', '<leader>na', '<cmd>lua require("telescope").extensions.neoclip["a"]()<CR>', opts)

	  end,
	}
	use 'AndrewRadev/bufferize.vim'
	use ({
		'jpalardy/vim-slime',
		config = function()
			vim.cmd[[let g:slime_target = "tmux"]]

			vim.cmd[[let g:slime_paste_file = "$HOME/.slime_paste"]]
			vim.cmd[[let g:slime_default_config = {"socket_name": "default", "target_pane": "{down-of}"}]]
			vim.cmd[[let g:slime_python_ipython = 1]]
			vim.cmd[[let g:slime_no_mappings = 1]]

			vim.cmd[[xmap <M-;> <Plug>SlimeRegionSend]]
			vim.cmd[[nmap <M-;> <Plug>SlimeMotionSend]]
			vim.cmd[[nmap <M-w> <Plug>SlimeLineSend]]
		end,
	})

	use ({
		'mbbill/undotree',
		config = function()
			vim.cmd[[
				if has("persistent_undo")
				   let target_path = expand('~/.nvim_undodir')


					let &undodir=target_path
					set undofile
				endif

				nnoremap <F5> :UndotreeToggle<CR>
			]]
		end,
	})
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use ({
		'mileszs/ack.vim',
		config = function()
			vim.cmd[[let g:ackprg = 'rg --smart-case --ignore --vimgrep']]
		end,
	})

end
-- }}}
return { init = init }
