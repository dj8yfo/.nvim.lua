
-- {{{ init
local function init(use)
    use('skywind3000/asyncrun.vim')

	use({ 'Olical/vim-enmasse', cmd = 'EnMasse' })
	use({'kevinhwang91/nvim-bqf', ft = 'qf'})

end
-- }}}
return { init = init }
