-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jerryminion/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jerryminion/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jerryminion/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jerryminion/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jerryminion/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["asyncrun.vim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\b\0\f\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0005\1\5\0\18\2\0\0'\4\6\0'\5\a\0'\6\b\0006\a\t\0B\2\5\1\18\2\0\0'\4\6\0'\5\n\0'\6\v\0006\a\t\0B\2\5\1K\0\1\0\29:BufferLineCyclePrev<CR>\agB\17default_opts\29:BufferLineCycleNext<CR>\agb\6n\1\0\1\vsilent\2\bmap\19settings.utils\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["copy-cut-paste.vim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/copy-cut-paste.vim",
    url = "https://github.com/NLKNguyen/copy-cut-paste.vim"
  },
  ["diffview.nvim"] = {
    config = { "require('settings.plugins.diffview')" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["elf-monokai-pro"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/elf-monokai-pro",
    url = "https://github.com/elvessousa/elf-monokai-pro"
  },
  ["fern.vim"] = {
    config = { "\27LJ\2\nx\0\0\a\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1K\0\1\0\1\0\1\vsilent\2\30<cmd>Fern . -reveal=%<CR>\ag\\\6n\bmap\19settings.utils\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/fern.vim",
    url = "https://github.com/lambdalisue/fern.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30settings.plugins.gitsigns\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["landscape.vim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/landscape.vim",
    url = "https://github.com/itchyny/landscape.vim"
  },
  ["lsp-status.nvim"] = {
    config = { "require('settings.plugins.lsp-status')" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["molokai.vim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/molokai.vim",
    url = "https://github.com/mrtazz/molokai.vim"
  },
  moonokai = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/moonokai",
    url = "https://github.com/Lewiky/moonokai"
  },
  ["neuromancer.vim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/neuromancer.vim",
    url = "https://github.com/Zabanaa/neuromancer.vim"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    config = { "require(\n\t\t'settings.plugins.completion'\n\t\t)" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    config = { "require('settings.plugins.lspconfig')" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "require('settings.plugins.treesitter')" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textsubjects"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textsubjects",
    url = "https://github.com/RRethy/nvim-treesitter-textsubjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0$nmap <leader>ps :PackerSync<cr>\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["registers.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\2\0\6\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\2\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0004abcdefghij*+\"-/_=#%.0123456789klmnopqrstuvwxyz:\19registers_show#registers_paste_in_normal_mode\26registers_insert_mode\6g\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/registers.nvim",
    url = "https://github.com/tversteeg/registers.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "require('settings.plugins.lspconfig.langs.rust-tools')" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  tabular = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  tagbar = {
    config = { "\27LJ\2\n�\t\0\0\a\0\14\0\"6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0015\0\5\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\0016\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\0\0009\1\1\1'\3\r\0B\1\2\1K\0\1\0�\6\t\t\t\tlet g:tagbar_type_rust = {\n\t\t\t\t  \\ 'ctagsbin' : '/usr/bin/ctags',\n\t\t\t\t  \\ 'ctagstype' : 'rust',\n\t\t\t\t  \\ 'kinds' : [\n\t\t\t\t\t  \\ 'n:modules',\n\t\t\t\t\t  \\ 's:structures:1',\n\t\t\t\t\t  \\ 'i:interfaces',\n\t\t\t\t\t  \\ 'c:implementations',\n\t\t\t\t\t  \\ 'f:functions:1',\n\t\t\t\t\t  \\ 'g:enumerations:1',\n\t\t\t\t\t  \\ 't:type aliases:1:0',\n\t\t\t\t\t  \\ 'v:constants:1:0',\n\t\t\t\t\t  \\ 'M:macros:1',\n\t\t\t\t\t  \\ 'm:fields:1:0',\n\t\t\t\t\t  \\ 'e:enum variants:1:0',\n\t\t\t\t\t  \\ 'P:methods:1',\n\t\t\t\t  \\ ],\n\t\t\t\t  \\ 'sro': '::',\n\t\t\t\t  \\ 'kind2scope' : {\n\t\t\t\t\t  \\ 'n': 'module',\n\t\t\t\t\t  \\ 's': 'struct',\n\t\t\t\t\t  \\ 'i': 'interface',\n\t\t\t\t\t  \\ 'c': 'implementation',\n\t\t\t\t\t  \\ 'f': 'function',\n\t\t\t\t\t  \\ 'g': 'enum',\n\t\t\t\t\t  \\ 't': 'typedef',\n\t\t\t\t\t  \\ 'v': 'variable',\n\t\t\t\t\t  \\ 'M': 'macro',\n\t\t\t\t\t  \\ 'm': 'field',\n\t\t\t\t\t  \\ 'e': 'enumerator',\n\t\t\t\t\t  \\ 'P': 'method',\n\t\t\t\t  \\ },\n\t\t\t\t\\ }\n\t\t\t\26<cmd>:TagbarClose<CR>\agK\28<cmd>:TagbarOpen fj<CR>\agk\6n\20nvim_set_keymap\bapi\1\0\2\vsilent\2\fnoremap\2\28let g:tagbar_width = 55.let g:tagbar_highlight_method = \"nearest\")let g:rust_use_custom_ctags_defs = 1\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1\18\1\0\0'\3\3\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1K\0\1\0\1\0\1\vsilent\2N<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>\15<leader>mf\1\0\1\vsilent\2E<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>\15<leader>ma\6n\bmap\19settings.utils\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/telescope-vim-bookmarks.nvim",
    url = "https://github.com/tom-anders/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-fzf-native.nvim", "telescope-frecency.nvim" },
    commands = { "Telescope" },
    config = { "require('settings.plugins.telescope')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight-vim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/tokyonight-vim",
    url = "https://github.com/ghifarit53/tokyonight-vim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n�\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\1\t\t\t\tif has(\"persistent_undo\")\n\t\t\t\t   let target_path = expand('~/.nvim_undodir')\n\n\n\t\t\t\t\tlet &undodir=target_path\n\t\t\t\t\tset undofile\n\t\t\t\tendif\n\n\t\t\t\tnnoremap <F5> :UndotreeToggle<CR>\n\t\t\t\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-aldmeris"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-aldmeris",
    url = "https://github.com/veloce/vim-aldmeris"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-colors-xcode",
    url = "https://github.com/arzg/vim-colors-xcode"
  },
  ["vim-cool"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-cool",
    url = "https://github.com/romainl/vim-cool"
  },
  ["vim-dirvish"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-dirvish",
    url = "https://github.com/justinmk/vim-dirvish"
  },
  ["vim-easymotion"] = {
    config = { "\27LJ\2\n�\3\0\0\3\0\v\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\t\0)\1\1\0=\1\n\0K\0\1\0\25EasyMotion_smartcase\6g$omap s <Plug>(easymotion-bd-f2)$xmap s <Plug>(easymotion-bd-f2))nmap s <Plug>(easymotion-overwin-f2)$xmap <c-h> <Plug>(easymotion-F)$nmap <c-h> <Plug>(easymotion-F)$xmap <c-l> <Plug>(easymotion-f)$nmap <c-l> <Plug>(easymotion-f)\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-edgemotion"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\2'\4\6\0B\2\2\0016\2\4\0009\2\5\2'\4\a\0B\2\2\1K\0\1\0#map <C-k> <Plug>(edgemotion-k)#map <C-j> <Plug>(edgemotion-j)\bcmd\bvim\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-edgemotion",
    url = "https://github.com/haya14busa/vim-edgemotion"
  },
  ["vim-enmasse"] = {
    commands = { "EnMasse" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/vim-enmasse",
    url = "https://github.com/Olical/vim-enmasse"
  },
  ["vim-exchange"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-exchange",
    url = "https://github.com/tommcdo/vim-exchange"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\nv\0\0\b\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\24<cmd>Git commit<CR>\agC\6n\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-grep-operator"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/vim-grep-operator",
    url = "https://github.com/inside/vim-grep-operator"
  },
  ["vim-highlighter"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-highlighter",
    url = "https://github.com/azabiong/vim-highlighter"
  },
  ["vim-humanoid-colorscheme"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-humanoid-colorscheme",
    url = "https://github.com/humanoid-colors/vim-humanoid-colorscheme"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\2\np\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\6\0=\1\3\0K\0\1\0\31vim_markdown_folding_level(vim_markdown_folding_style_pythonic\6g\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/preservim/vim-markdown"
  },
  ["vim-monokai-tasty"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-monokai-tasty",
    url = "https://github.com/patstockwell/vim-monokai-tasty"
  },
  ["vim-sayonara"] = {
    commands = { "Sayonara" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/vim-sayonara",
    url = "https://github.com/mhinz/vim-sayonara"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-signature",
    url = "https://github.com/kshenoy/vim-signature"
  },
  ["vim-slime"] = {
    config = { "\27LJ\2\n�\3\0\0\3\0\n\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\1K\0\1\0#nmap <M-w> <Plug>SlimeLineSend%nmap <M-;> <Plug>SlimeMotionSend%xmap <M-;> <Plug>SlimeRegionSend let g:slime_no_mappings = 1#let g:slime_python_ipython = 1Xlet g:slime_default_config = {\"socket_name\": \"default\", \"target_pane\": \"{down-of}\"}2let g:slime_paste_file = \"$HOME/.slime_paste\" let g:slime_target = \"tmux\"\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-slime",
    url = "https://github.com/jpalardy/vim-slime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-synthwave84"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-synthwave84",
    url = "https://github.com/artanikin/vim-synthwave84"
  },
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\n�\2\0\0\3\0\b\0\0256\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\1K\0\1\0003nnoremap <silent> <m-l> :TmuxNavigateRight<cr>0nnoremap <silent> <m-k> :TmuxNavigateUp<cr>2nnoremap <silent> <m-j> :TmuxNavigateDown<cr>2nnoremap <silent> <m-h> :TmuxNavigateLeft<cr>1let g:tmux_navigator_disable_when_zoomed = 1)let g:tmux_navigator_no_mappings = 1\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-visualstar"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-visualstar",
    url = "https://github.com/thinca/vim-visualstar"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-wordmotion"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-wordmotion",
    url = "https://github.com/chaoren/vim-wordmotion"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\ng\0\0\3\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\25nmap gz :ZenMode<CR>\bcmd\bvim\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  },
  zk = {
    config = { 'require("zk").setup(\n\t\t{\n\t\t\tpicker = "telescope",\n\t\t}\n\t\t)' },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/zk",
    url = "https://github.com/mickael-menu/zk-nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^telescope"] = "telescope.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: vim-grep-operator
time([[Setup for vim-grep-operator]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0008vmap <leader>g <Plug>GrepOperatorOnCurrentDirectory8nmap <leader>g <Plug>GrepOperatorOnCurrentDirectory\bcmd\bvim\0", "setup", "vim-grep-operator")
time([[Setup for vim-grep-operator]], false)
time([[packadd for vim-grep-operator]], true)
vim.cmd [[packadd vim-grep-operator]]
time([[packadd for vim-grep-operator]], false)
-- Setup for: vim-sayonara
time([[Setup for vim-sayonara]], true)
try_loadstring("\27LJ\2\ns\0\0\a\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1K\0\1\0\1\0\1\vsilent\2\22<cmd>Sayonara<CR>\n<m-q>\6n\bmap\19settings.utils\frequire\0", "setup", "vim-sayonara")
time([[Setup for vim-sayonara]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
require('settings.plugins.telescope_setup')
time([[Setup for telescope.nvim]], false)
-- Setup for: nvim-lightbulb
time([[Setup for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\5\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0B\0\2\1K\0\1\0-hi link LightBulbVirtualText YellowFloat*hi link LightBulbFloatWin YellowFloat\17nvim_command\bapi\bvim\0", "setup", "nvim-lightbulb")
time([[Setup for nvim-lightbulb]], false)
time([[packadd for nvim-lightbulb]], true)
vim.cmd [[packadd nvim-lightbulb]]
time([[packadd for nvim-lightbulb]], false)
-- Setup for: asyncrun.vim
time([[Setup for asyncrun.vim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0,nmap <leader>mt :AsyncRun make test<cr>,nmap <leader>ml :AsyncRun make lint<cr>-nmap <leader>mb :AsyncRun make build<cr>\bcmd\bvim\0", "setup", "asyncrun.vim")
time([[Setup for asyncrun.vim]], false)
time([[packadd for asyncrun.vim]], true)
vim.cmd [[packadd asyncrun.vim]]
time([[packadd for asyncrun.vim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\1\t\t\t\tif has(\"persistent_undo\")\n\t\t\t\t   let target_path = expand('~/.nvim_undodir')\n\n\n\t\t\t\t\tlet &undodir=target_path\n\t\t\t\t\tset undofile\n\t\t\t\tendif\n\n\t\t\t\tnnoremap <F5> :UndotreeToggle<CR>\n\t\t\t\bcmd\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: registers.nvim
time([[Config for registers.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\6\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\2\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0004abcdefghij*+\"-/_=#%.0123456789klmnopqrstuvwxyz:\19registers_show#registers_paste_in_normal_mode\26registers_insert_mode\6g\bvim\0", "config", "registers.nvim")
time([[Config for registers.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('settings.plugins.treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: zk
time([[Config for zk]], true)
require("zk").setup(
		{
			picker = "telescope",
		}
		)
time([[Config for zk]], false)
-- Config for: fern.vim
time([[Config for fern.vim]], true)
try_loadstring("\27LJ\2\nx\0\0\a\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1K\0\1\0\1\0\1\vsilent\2\30<cmd>Fern . -reveal=%<CR>\ag\\\6n\bmap\19settings.utils\frequire\0", "config", "fern.vim")
time([[Config for fern.vim]], false)
-- Config for: vim-edgemotion
time([[Config for vim-edgemotion]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\2'\4\6\0B\2\2\0016\2\4\0009\2\5\2'\4\a\0B\2\2\1K\0\1\0#map <C-k> <Plug>(edgemotion-k)#map <C-j> <Plug>(edgemotion-j)\bcmd\bvim\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0", "config", "vim-edgemotion")
time([[Config for vim-edgemotion]], false)
-- Config for: telescope-vim-bookmarks.nvim
time([[Config for telescope-vim-bookmarks.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1\18\1\0\0'\3\3\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1K\0\1\0\1\0\1\vsilent\2N<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>\15<leader>mf\1\0\1\vsilent\2E<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>\15<leader>ma\6n\bmap\19settings.utils\frequire\0", "config", "telescope-vim-bookmarks.nvim")
time([[Config for telescope-vim-bookmarks.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30settings.plugins.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: vim-easymotion
time([[Config for vim-easymotion]], true)
try_loadstring("\27LJ\2\n�\3\0\0\3\0\v\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\t\0)\1\1\0=\1\n\0K\0\1\0\25EasyMotion_smartcase\6g$omap s <Plug>(easymotion-bd-f2)$xmap s <Plug>(easymotion-bd-f2))nmap s <Plug>(easymotion-overwin-f2)$xmap <c-h> <Plug>(easymotion-F)$nmap <c-h> <Plug>(easymotion-F)$xmap <c-l> <Plug>(easymotion-f)$nmap <c-l> <Plug>(easymotion-f)\bcmd\bvim\0", "config", "vim-easymotion")
time([[Config for vim-easymotion]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
require('settings.plugins.diffview')
time([[Config for diffview.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\ng\0\0\3\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\25nmap gz :ZenMode<CR>\bcmd\bvim\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\f\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0005\1\5\0\18\2\0\0'\4\6\0'\5\a\0'\6\b\0006\a\t\0B\2\5\1\18\2\0\0'\4\6\0'\5\n\0'\6\v\0006\a\t\0B\2\5\1K\0\1\0\29:BufferLineCyclePrev<CR>\agB\17default_opts\29:BufferLineCycleNext<CR>\agb\6n\1\0\1\vsilent\2\bmap\19settings.utils\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\nv\0\0\b\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\24<cmd>Git commit<CR>\agC\6n\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: lsp-status.nvim
time([[Config for lsp-status.nvim]], true)
require('settings.plugins.lsp-status')
time([[Config for lsp-status.nvim]], false)
-- Config for: vim-highlighter
time([[Config for vim-highlighter]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-highlighter")
time([[Config for vim-highlighter]], false)
-- Config for: tagbar
time([[Config for tagbar]], true)
try_loadstring("\27LJ\2\n�\t\0\0\a\0\14\0\"6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0015\0\5\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\0016\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\0\0009\1\1\1'\3\r\0B\1\2\1K\0\1\0�\6\t\t\t\tlet g:tagbar_type_rust = {\n\t\t\t\t  \\ 'ctagsbin' : '/usr/bin/ctags',\n\t\t\t\t  \\ 'ctagstype' : 'rust',\n\t\t\t\t  \\ 'kinds' : [\n\t\t\t\t\t  \\ 'n:modules',\n\t\t\t\t\t  \\ 's:structures:1',\n\t\t\t\t\t  \\ 'i:interfaces',\n\t\t\t\t\t  \\ 'c:implementations',\n\t\t\t\t\t  \\ 'f:functions:1',\n\t\t\t\t\t  \\ 'g:enumerations:1',\n\t\t\t\t\t  \\ 't:type aliases:1:0',\n\t\t\t\t\t  \\ 'v:constants:1:0',\n\t\t\t\t\t  \\ 'M:macros:1',\n\t\t\t\t\t  \\ 'm:fields:1:0',\n\t\t\t\t\t  \\ 'e:enum variants:1:0',\n\t\t\t\t\t  \\ 'P:methods:1',\n\t\t\t\t  \\ ],\n\t\t\t\t  \\ 'sro': '::',\n\t\t\t\t  \\ 'kind2scope' : {\n\t\t\t\t\t  \\ 'n': 'module',\n\t\t\t\t\t  \\ 's': 'struct',\n\t\t\t\t\t  \\ 'i': 'interface',\n\t\t\t\t\t  \\ 'c': 'implementation',\n\t\t\t\t\t  \\ 'f': 'function',\n\t\t\t\t\t  \\ 'g': 'enum',\n\t\t\t\t\t  \\ 't': 'typedef',\n\t\t\t\t\t  \\ 'v': 'variable',\n\t\t\t\t\t  \\ 'M': 'macro',\n\t\t\t\t\t  \\ 'm': 'field',\n\t\t\t\t\t  \\ 'e': 'enumerator',\n\t\t\t\t\t  \\ 'P': 'method',\n\t\t\t\t  \\ },\n\t\t\t\t\\ }\n\t\t\t\26<cmd>:TagbarClose<CR>\agK\28<cmd>:TagbarOpen fj<CR>\agk\6n\20nvim_set_keymap\bapi\1\0\2\vsilent\2\fnoremap\2\28let g:tagbar_width = 55.let g:tagbar_highlight_method = \"nearest\")let g:rust_use_custom_ctags_defs = 1\bcmd\bvim\0", "config", "tagbar")
time([[Config for tagbar]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
try_loadstring("\27LJ\2\np\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\6\0=\1\3\0K\0\1\0\31vim_markdown_folding_level(vim_markdown_folding_style_pythonic\6g\bvim\0", "config", "vim-markdown")
time([[Config for vim-markdown]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
require('settings.plugins.lspconfig.langs.rust-tools')
time([[Config for rust-tools.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('settings.plugins.lspconfig')
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\n�\2\0\0\3\0\b\0\0256\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\1K\0\1\0003nnoremap <silent> <m-l> :TmuxNavigateRight<cr>0nnoremap <silent> <m-k> :TmuxNavigateUp<cr>2nnoremap <silent> <m-j> :TmuxNavigateDown<cr>2nnoremap <silent> <m-h> :TmuxNavigateLeft<cr>1let g:tmux_navigator_disable_when_zoomed = 1)let g:tmux_navigator_no_mappings = 1\bcmd\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: vim-slime
time([[Config for vim-slime]], true)
try_loadstring("\27LJ\2\n�\3\0\0\3\0\n\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\1K\0\1\0#nmap <M-w> <Plug>SlimeLineSend%nmap <M-;> <Plug>SlimeMotionSend%xmap <M-;> <Plug>SlimeRegionSend let g:slime_no_mappings = 1#let g:slime_python_ipython = 1Xlet g:slime_default_config = {\"socket_name\": \"default\", \"target_pane\": \"{down-of}\"}2let g:slime_paste_file = \"$HOME/.slime_paste\" let g:slime_target = \"tmux\"\bcmd\bvim\0", "config", "vim-slime")
time([[Config for vim-slime]], false)
-- Config for: packer.nvim
time([[Config for packer.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0$nmap <leader>ps :PackerSync<cr>\bcmd\bvim\0", "config", "packer.nvim")
time([[Config for packer.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file EnMasse lua require("packer.load")({'vim-enmasse'}, { cmd = "EnMasse", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Sayonara lua require("packer.load")({'vim-sayonara'}, { cmd = "Sayonara", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
