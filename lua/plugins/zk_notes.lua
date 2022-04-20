-- {{{ init
local function init(use)
	use({
		'mickael-menu/zk-nvim',
		as = 'zk',
		config = [[require("zk").setup(
		{
			picker = "telescope",
		}
		)]],
	})
end
-- }}}
return { init = init }
