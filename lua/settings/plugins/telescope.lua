local telescope = require('telescope')

local actions = require "telescope.actions"
telescope.load_extension('harpoon')

telescope.setup({
	defaults = {
		layout_strategy = 'flex',
		scroll_strategy = 'cycle',
		layout_config = {
			vertical = { height = 50 }
			-- other layout configuration here
		},
	},
	extensions = {
		frecency = {},
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = 'smart_case',
		},
	},
	pickers = {
		lsp_code_actions = { theme = 'dropdown' },
		lsp_definitions = { theme = 'dropdown' },
		lsp_implementations = { theme = 'dropdown' },
		buffers = {
			sort_lastused = true,
			previewer = false,
			mappings = {
				i = {
					["<c-d>"] = actions.delete_buffer + actions.move_to_top,
				}
			}
		},
	},
})

