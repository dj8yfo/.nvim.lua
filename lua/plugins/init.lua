local packer = nil

-- {{{ init
local function init()
    if packer == nil then
	packer = require('packer')
	packer.init({})
    end

    local use = packer.use
    packer.reset()

    -- {{{ root
    use({'wbthomason/packer.nvim', 
        config = function()
	    vim.cmd([[command! PackerSync lua require('plugins').sync()]])
	end,
    })
    use 'lewis6991/impatient.nvim'
    -- }}}
    -- {{{ groups
    local auxiliary = require('plugins.auxiliary')
    auxiliary.init(use)

    local navigation = require('plugins.navigation')
    navigation.init(use)

    local appearance = require('plugins.appearance')
    appearance.init(use)

    local colorschemes = require('plugins.colorschemes')
    colorschemes.init(use)

    local fuzzy_search = require('plugins.fuzzy_search')
    fuzzy_search.init(use)

    local lsp = require('plugins.lsp')
    lsp.init(use)

    local zk_notes = require('plugins.zk_notes')
    zk_notes.init(use)
    -- }}}

end
-- }}}

local plugins = setmetatable({}, {
    __index = function(_, key)
	init()
	return packer[key]
    end,
})

return plugins
