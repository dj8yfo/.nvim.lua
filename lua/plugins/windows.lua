
-- {{{ init
local function init(use)
    use({
		'skywind3000/asyncrun.vim',
		setup = function()
			vim.cmd[[nmap <leader>mb :AsyncRun make build<cr>]]
			vim.cmd[[nmap <leader>ml :AsyncRun make lint<cr>]]
			vim.cmd[[nmap <leader>mt :AsyncRun make test<cr>]]
		end,
	})

	use({ 'Olical/vim-enmasse', cmd = 'EnMasse' })
	use({
		-- https://github.com/kevinhwang91/nvim-bqf#function-table
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
