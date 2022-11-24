local cmp = require('cmp')

local luasnip = require 'luasnip'

cmp.setup ({

	completion = { completeopt = 'menu,menuone,noinsert' },
	sorting = {
		comparators = require('settings.plugins.completion.comparators').c,
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	formatting = {
		format = require('settings.plugins.completion.cmp_kinds').f,
	},
	mapping = require('settings.plugins.completion.mapping').m,
	sources = {
		{ name = 'path' },
		{ name = 'buffer' },
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'luasnip' },
		{ name = 'nvim_lua' },
	},
})
