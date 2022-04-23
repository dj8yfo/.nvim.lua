local cmp = require('cmp')

local comparators = {
	-- custom comparator {{{
	-- function(entry1, entry2)
	--   local score1 = entry1.completion_item.score
	--   local score2 = entry2.completion_item.score
	--   if score1 and score2 then
	--     return (score1 - score2) < 0
	--   end
	-- end,
	-- }}}
	cmp.config.compare.offset,
	cmp.config.compare.exact,
	cmp.config.compare.score,
	require('cmp-under-comparator').under,
	cmp.config.compare.kind,
	cmp.config.compare.sort_text,
	cmp.config.compare.length,
	cmp.config.compare.order,
}

return { comparators = comparators }
