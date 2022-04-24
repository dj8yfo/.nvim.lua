local fn = vim.fn

local install_path = fn.stdpath(
	'data'
	)..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
	  'git', 
	  'clone', 
	  '--depth', 
	  '1', 
	  'https://github.com/wbthomason/packer.nvim', 
	  install_path
  })
end

vim.cmd([[packadd packer.nvim]])

-- {{{ init
return require('packer').startup(function(use)

	packer = require('packer')

    -- {{{ root
    use('wbthomason/packer.nvim')
    use('lewis6991/impatient.nvim')
    -- }}}
    -- {{{ groups
    local syntax = require('plugins.syntax')
    syntax.init(use)

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

    local nifty_edit = require('plugins.nifty_edit')
    nifty_edit.init(use)

    local completion = require('plugins.completion')
    completion.init(use)

    local lsp = require('plugins.lsp')
    lsp.init(use)

    local zk_notes = require('plugins.zk_notes')
    zk_notes.init(use)

    local windows = require('plugins.windows')
    windows.init(use)

    local git = require('plugins.git')
    git.init(use)
    -- }}}

end)
-- }}}

