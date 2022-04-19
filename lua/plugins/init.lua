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

end
-- }}}

local plugins = setmetatable({}, {
    __index = function(_, key)
	init()
	return packer[key]
    end,
})

return plugins
