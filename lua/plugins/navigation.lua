-- {{{ init
local function init(use)
    use({
	'mhinz/vim-sayonara',
	setup = function()
	    local map = require('settings.utils').map
	    map('n', '<c-q>', [[<cmd>Sayonara<CR>]], { silent = true})
	end,
	cmd = 'Sayonara',
    })
end
-- }}}
return { init = init }
