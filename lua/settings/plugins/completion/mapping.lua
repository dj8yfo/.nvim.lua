local cmp = require('cmp')
local luasnip = require 'luasnip'

local feedkeys = vim.fn.feedkeys
local replace_termcodes = vim.api.nvim_replace_termcodes

local function check_backspace()
	local col = vim.fn.col '.' - 1
	return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' ~= nil
end

local backspace_keys = replace_termcodes('<tab>', true, true, true)
local snippet_next_keys = replace_termcodes('<plug>luasnip-expand-or-jump', true, true, true)
local snippet_prev_keys = replace_termcodes('<plug>luasnip-jump-prev', true, true, true)

local mapping = {

	['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
	['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
	['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
	['<C-y>'] = cmp.mapping.confirm({ select = false }),
	['<C-e>'] = cmp.mapping {
		i = cmp.mapping.abort(),
		c = cmp.mapping.close(),
	},

	['<CR>'] = cmp.mapping.confirm({ select = true }),

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
    ['<tab>'] = function(fallback)
      if luasnip.expand_or_jumpable() then
        feedkeys(snippet_next_keys, '')
      elseif check_backspace() then
        feedkeys(backspace_keys, 'n')
      else
        fallback()
      end
    end,
    ['<s-tab>'] = function(fallback)
      if luasnip.jumpable(-1) then
        feedkeys(snippet_prev_keys, '')
      else
        fallback()
      end
    end,
}

return { m = mapping }
