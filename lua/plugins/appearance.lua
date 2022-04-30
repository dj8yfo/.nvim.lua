-- {{{ init
local function init(use)

	use({
		'haya14busa/vim-edgemotion',
		config = function()
			local map = require('settings.utils').map
			local silent = { silent = true }
			vim.cmd [[map <C-j> <Plug>(edgemotion-j)]]
			vim.cmd [[map <C-k> <Plug>(edgemotion-k)]]
		end,
	})

	use ({'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require("bufferline").setup{}

			local map = require('settings.utils').map
			local silent = { silent = true }
			map('n', 'gb', ':BufferLineCycleNext<CR>', default_opts)
			map('n', 'gB', ':BufferLineCyclePrev<CR>', default_opts)
		end, 
	})

	use ({ 'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require('lualine').setup()
		end, 
	})
end
-- }}}
return { init = init }


