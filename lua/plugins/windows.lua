
-- {{{ init
local function init(use)
    use('skywind3000/asyncrun.vim')

	use({ 'Olical/vim-enmasse', cmd = 'EnMasse' })
	use({
		'kevinhwang91/nvim-bqf', 
		ft = 'qf',
	})

	use({
		'inside/vim-grep-operator', 
		setup = function()
			vim.cmd[[nmap <leader>g <Plug>GrepOperatorOnCurrentDirectory]]
			vim.cmd[[vmap <leader>g <Plug>GrepOperatorOnCurrentDirectory]]

		end,
	})

end
-- }}}
return { init = init }
