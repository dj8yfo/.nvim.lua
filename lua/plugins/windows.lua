
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
		'milkypostman/vim-togglelist',
		setup = function()
			vim.cmd[[nmap <script> <silent> g; :call ToggleLocationList()<CR>]]
			vim.cmd[[nmap <script> <silent> go :call ToggleQuickfixList()<CR>]]
			vim.cmd[[let g:toggle_list_no_mappings = 1]]

		end,
	})


	use({
		'inside/vim-grep-operator',
		setup = function()
			vim.cmd[[nmap <leader>g <Plug>GrepOperatorOnCurrentDirectory]]
			vim.cmd[[vmap <leader>g <Plug>GrepOperatorOnCurrentDirectory]]

		end,
	})

	use({
		'mtth/scratch.vim',
		setup = function()
			vim.cmd[[let g:scratch_insert_autohide = 0]]
		end,
	})
	use ({
		'rmagatti/auto-session',
		config = function()
			require("auto-session").setup {
				log_level = "error",
				-- auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
				-- auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
			}
		end
	})

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},

		config = function()
			require'nvim-tree'.setup {}
			vim.cmd[[nmap gb :NvimTreeFindFile<CR>]]
			vim.cmd[[nmap gB :NvimTreeToggle<CR>]]
		end
	}


end
-- }}}
return { init = init }
