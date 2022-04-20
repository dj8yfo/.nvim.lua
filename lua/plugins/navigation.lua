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

    use 'romainl/vim-cool'
    use 'justinmk/vim-dirvish'
end
-- }}}
return { init = init }
