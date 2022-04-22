-- {{{ init
local function init(use)

	require('plugins.syntax.markdown').init(use)
end
-- }}}
return { init = init }
