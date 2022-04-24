local ts_configs = require 'nvim-treesitter.configs'
ts_configs.setup {
	ensure_installed = 'all',
	highlight = { 
		enable = true,
		disable = { "markdown" },
	},

	indent = {
		-- comment
		enable = true
	},

	rainbow = {
		enable = true,
		extended_mode = false,
		-- Setting colors
		colors = {
			'chartreuse',
			'yellow',
			'MistyRose',
			'DeepPink',
		},
	},
}
