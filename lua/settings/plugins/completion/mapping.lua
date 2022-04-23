local cmp = require('cmp')

local mapping = {
	['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
	['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
	['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
	['<C-y>'] = cmp.config.disable,
	['<C-e>'] = cmp.mapping {
		i = cmp.mapping.abort(),
		c = cmp.mapping.close(),
	},
	-- ['<cr>'] = cmp.mapping.confirm { select = true, behavior = cmp.ConfirmBehavior.Replace },
	['<c-n>'] = function(fallback)
		if cmp.visible() then
			cmp.select_next_item()
		elseif check_backspace() then
			feedkeys(backspace_keys, 'n')
		else
			fallback()
		end
	end,
	['<c-p>'] = function(fallback)
		if cmp.visible() then
			cmp.select_prev_item()
		else
			fallback()
		end
	end,
}

return { m = mapping }
