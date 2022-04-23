local cmp = require('cmp')

local function check_backspace()
	local col = vim.fn.col '.' - 1
	return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' ~= nil
end

cmp.setup ({
	completion = { completeopt = 'menu,menuone,noinsert' },
	sorting = {
		comparators = require('settings.plugins.completion.comparators').c,
	},
	snippet = {
	},
	formatting = {
		format = require('settings.plugins.completion.cmp_kinds').f,
	},
	mapping = require('settings.plugins.completion.mapping').m,
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'path' },
		{ name = 'buffer' },
	},
})
