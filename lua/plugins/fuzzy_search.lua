-- {{{ init
local function init(use)

    use({
	{
	    'nvim-telescope/telescope.nvim',
		-- commit = '92019d5053674676576b021904935d101b059fd5',
	    requires = {
		'nvim-lua/popup.nvim',
		'nvim-lua/plenary.nvim',
		'telescope-frecency.nvim',
		'telescope-fzf-native.nvim',
	    },
	    setup = [[require('settings.plugins.telescope_setup')]],
	    config = [[require('settings.plugins.telescope')]],
	    cmd = 'Telescope',
	    module = 'telescope',

	},
	{
	    'nvim-telescope/telescope-frecency.nvim',
	    after = 'telescope.nvim',
	    config = function()
		require("telescope").load_extension("frecency")
	    end,
	    requires = 'tami5/sqlite.lua',
	},
	{
	    'nvim-telescope/telescope-fzf-native.nvim',
	    after = 'telescope.nvim',
	    config = function()
		require("telescope").load_extension("fzf")
	    end,
	    run = 'make',
	},
    })

end
-- }}}
return { init = init }
