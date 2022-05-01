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
		end,
	})
	use('tommcdo/vim-exchange')

	use('NLKNguyen/copy-cut-paste.vim')
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


end
-- }}}
return { init = init }
