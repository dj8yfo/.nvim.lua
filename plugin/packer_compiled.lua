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
local package_path_str = "/home/jerryminion/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/jerryminion/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/jerryminion/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/jerryminion/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jerryminion/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
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
    config = { "\27LJ\1\2å\1\0\0\a\0\f\0\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\0014\0\0\0%\1\3\0>\0\2\0027\0\4\0003\1\5\0\16\2\0\0%\3\6\0%\4\a\0%\5\b\0004\6\t\0>\2\5\1\16\2\0\0%\3\6\0%\4\n\0%\5\v\0004\6\t\0>\2\5\1G\0\1\0\29:BufferLineCyclePrev<CR>\agB\17default_opts\29:BufferLineCycleNext<CR>\agb\6n\1\0\1\vsilent\2\bmap\19settings.utils\nsetup\15bufferline\frequire\0" },
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
    config = { "\27LJ\1\2x\0\0\6\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0\16\1\0\0%\2\3\0%\3\4\0%\4\5\0003\5\6\0>\1\5\1G\0\1\0\1\0\1\vsilent\2\30<cmd>Fern . -reveal=%<CR>\ag\\\6n\bmap\19settings.utils\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/fern.vim",
    url = "https://github.com/lambdalisue/fern.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0029\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\30settings.plugins.gitsigns\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lsp-status.nvim"] = {
    config = { "require('settings.plugins.lsp-status')" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
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
    config = { "\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\17nvim_comment\frequire\0" },
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
    config = { "\27LJ\1\2C\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0$nmap <leader>ps :PackerSync<cr>\bcmd\bvim\0" },
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
    config = { "\27LJ\1\2µ\1\0\0\2\0\6\0\r4\0\0\0007\0\1\0'\1\0\0:\1\2\0004\0\0\0007\0\1\0'\1\2\0:\1\3\0004\0\0\0007\0\1\0%\1\5\0:\1\4\0G\0\1\0004abcdefghij*+\"-/_=#%.0123456789klmnopqrstuvwxyz:\19registers_show#registers_paste_in_normal_mode\26registers_insert_mode\6g\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/registers.nvim",
    url = "https://github.com/tversteeg/registers.nvim"
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
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\1\2M\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0%\1\3\0>\0\2\1G\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\1\2H\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0%\1\3\0>\0\2\1G\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    config = { "\27LJ\1\2Ÿ\2\0\0\6\0\n\0\0174\0\0\0%\1\1\0>\0\2\0027\0\2\0\16\1\0\0%\2\3\0%\3\4\0%\4\5\0003\5\6\0>\1\5\1\16\1\0\0%\2\3\0%\3\a\0%\4\b\0003\5\t\0>\1\5\1G\0\1\0\1\0\1\vsilent\2N<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>\15<leader>mf\1\0\1\vsilent\2E<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>\15<leader>ma\6n\bmap\19settings.utils\frequire\0" },
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
  ["trouble.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\1\2\0>\1\1\1G\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
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
  ["vim-edgemotion"] = {
    config = { "\27LJ\1\2«\1\0\0\4\0\b\0\0144\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0004\2\4\0007\2\5\2%\3\6\0>\2\2\0014\2\4\0007\2\5\2%\3\a\0>\2\2\1G\0\1\0#map <C-k> <Plug>(edgemotion-k)#map <C-j> <Plug>(edgemotion-j)\bcmd\bvim\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0" },
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
    config = { "\27LJ\1\2v\0\0\a\0\a\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0\16\2\0\0%\3\4\0%\4\5\0%\5\6\0\16\6\1\0>\2\5\1G\0\1\0\24<cmd>Git commit<CR>\agC\6n\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0" },
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
    config = { "\27LJ\1\2\v\0\0\1\0\0\0\1G\0\1\0\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-highlighter",
    url = "https://github.com/azabiong/vim-highlighter"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\1\2p\0\0\2\0\4\0\t4\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\6\0:\1\3\0G\0\1\0\31vim_markdown_folding_level(vim_markdown_folding_style_pythonic\6g\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/preservim/vim-markdown"
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
  ["vim-sneak"] = {
    config = { "\27LJ\1\2Š\1\0\0\2\0\5\0\r4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\0014\0\0\0007\0\1\0%\1\4\0>\0\2\1G\0\1\0\31let g:sneak#use_ic_scs = 1\26xmap gs <Plug>Sneak_S\26nmap gs <Plug>Sneak_S\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-sneak",
    url = "https://github.com/justinmk/vim-sneak"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-system-copy"] = {
    config = { "\27LJ\1\2‹\1\0\0\2\0\4\0\t4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\1G\0\1\0001let g:system_copy#paste_command = 'wl-paste'/let g:system_copy#copy_command = 'wl-copy'\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-system-copy",
    url = "https://github.com/christoomey/vim-system-copy"
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

-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
require('settings.plugins.telescope_setup')
time([[Setup for telescope.nvim]], false)
-- Setup for: vim-grep-operator
time([[Setup for vim-grep-operator]], true)
try_loadstring("\27LJ\1\2›\1\0\0\2\0\4\0\t4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\1G\0\1\0008vmap <leader>g <Plug>GrepOperatorOnCurrentDirectory8nmap <leader>g <Plug>GrepOperatorOnCurrentDirectory\bcmd\bvim\0", "setup", "vim-grep-operator")
time([[Setup for vim-grep-operator]], false)
time([[packadd for vim-grep-operator]], true)
vim.cmd [[packadd vim-grep-operator]]
time([[packadd for vim-grep-operator]], false)
-- Setup for: vim-sayonara
time([[Setup for vim-sayonara]], true)
try_loadstring("\27LJ\1\2s\0\0\6\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0\16\1\0\0%\2\3\0%\3\4\0%\4\5\0003\5\6\0>\1\5\1G\0\1\0\1\0\1\vsilent\2\22<cmd>Sayonara<CR>\n<c-q>\6n\bmap\19settings.utils\frequire\0", "setup", "vim-sayonara")
time([[Setup for vim-sayonara]], false)
-- Setup for: asyncrun.vim
time([[Setup for asyncrun.vim]], true)
try_loadstring("\27LJ\1\2¼\1\0\0\2\0\5\0\r4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\0014\0\0\0007\0\1\0%\1\4\0>\0\2\1G\0\1\0,nmap <leader>mt :AsyncRun make test<cr>,nmap <leader>ml :AsyncRun make lint<cr>-nmap <leader>mb :AsyncRun make build<cr>\bcmd\bvim\0", "setup", "asyncrun.vim")
time([[Setup for asyncrun.vim]], false)
time([[packadd for asyncrun.vim]], true)
vim.cmd [[packadd asyncrun.vim]]
time([[packadd for asyncrun.vim]], false)
-- Setup for: nvim-lightbulb
time([[Setup for nvim-lightbulb]], true)
try_loadstring("\27LJ\1\2—\1\0\0\2\0\5\0\v4\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\0014\0\0\0007\0\1\0007\0\2\0%\1\4\0>\0\2\1G\0\1\0-hi link LightBulbVirtualText YellowFloat*hi link LightBulbFloatWin YellowFloat\17nvim_command\bapi\bvim\0", "setup", "nvim-lightbulb")
time([[Setup for nvim-lightbulb]], false)
time([[packadd for nvim-lightbulb]], true)
vim.cmd [[packadd nvim-lightbulb]]
time([[packadd for nvim-lightbulb]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('settings.plugins.treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: vim-highlighter
time([[Config for vim-highlighter]], true)
try_loadstring("\27LJ\1\2\v\0\0\1\0\0\0\1G\0\1\0\0", "config", "vim-highlighter")
time([[Config for vim-highlighter]], false)
-- Config for: zk
time([[Config for zk]], true)
require("zk").setup(
		{
			picker = "telescope",
		}
		)
time([[Config for zk]], false)
-- Config for: registers.nvim
time([[Config for registers.nvim]], true)
try_loadstring("\27LJ\1\2µ\1\0\0\2\0\6\0\r4\0\0\0007\0\1\0'\1\0\0:\1\2\0004\0\0\0007\0\1\0'\1\2\0:\1\3\0004\0\0\0007\0\1\0%\1\5\0:\1\4\0G\0\1\0004abcdefghij*+\"-/_=#%.0123456789klmnopqrstuvwxyz:\19registers_show#registers_paste_in_normal_mode\26registers_insert_mode\6g\bvim\0", "config", "registers.nvim")
time([[Config for registers.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\1\2\0>\1\1\1G\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: packer.nvim
time([[Config for packer.nvim]], true)
try_loadstring("\27LJ\1\2C\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0$nmap <leader>ps :PackerSync<cr>\bcmd\bvim\0", "config", "packer.nvim")
time([[Config for packer.nvim]], false)
-- Config for: vim-sneak
time([[Config for vim-sneak]], true)
try_loadstring("\27LJ\1\2Š\1\0\0\2\0\5\0\r4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\0014\0\0\0007\0\1\0%\1\4\0>\0\2\1G\0\1\0\31let g:sneak#use_ic_scs = 1\26xmap gs <Plug>Sneak_S\26nmap gs <Plug>Sneak_S\bcmd\bvim\0", "config", "vim-sneak")
time([[Config for vim-sneak]], false)
-- Config for: fern.vim
time([[Config for fern.vim]], true)
try_loadstring("\27LJ\1\2x\0\0\6\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0\16\1\0\0%\2\3\0%\3\4\0%\4\5\0003\5\6\0>\1\5\1G\0\1\0\1\0\1\vsilent\2\30<cmd>Fern . -reveal=%<CR>\ag\\\6n\bmap\19settings.utils\frequire\0", "config", "fern.vim")
time([[Config for fern.vim]], false)
-- Config for: telescope-vim-bookmarks.nvim
time([[Config for telescope-vim-bookmarks.nvim]], true)
try_loadstring("\27LJ\1\2Ÿ\2\0\0\6\0\n\0\0174\0\0\0%\1\1\0>\0\2\0027\0\2\0\16\1\0\0%\2\3\0%\3\4\0%\4\5\0003\5\6\0>\1\5\1\16\1\0\0%\2\3\0%\3\a\0%\4\b\0003\5\t\0>\1\5\1G\0\1\0\1\0\1\vsilent\2N<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>\15<leader>mf\1\0\1\vsilent\2E<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>\15<leader>ma\6n\bmap\19settings.utils\frequire\0", "config", "telescope-vim-bookmarks.nvim")
time([[Config for telescope-vim-bookmarks.nvim]], false)
-- Config for: lsp-status.nvim
time([[Config for lsp-status.nvim]], true)
require('settings.plugins.lsp-status')
time([[Config for lsp-status.nvim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\1\2v\0\0\a\0\a\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0\16\2\0\0%\3\4\0%\4\5\0%\5\6\0\16\6\1\0>\2\5\1G\0\1\0\24<cmd>Git commit<CR>\agC\6n\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
require('settings.plugins.diffview')
time([[Config for diffview.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0029\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\30settings.plugins.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: vim-edgemotion
time([[Config for vim-edgemotion]], true)
try_loadstring("\27LJ\1\2«\1\0\0\4\0\b\0\0144\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0004\2\4\0007\2\5\2%\3\6\0>\2\2\0014\2\4\0007\2\5\2%\3\a\0>\2\2\1G\0\1\0#map <C-k> <Plug>(edgemotion-k)#map <C-j> <Plug>(edgemotion-j)\bcmd\bvim\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0", "config", "vim-edgemotion")
time([[Config for vim-edgemotion]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\1\2å\1\0\0\a\0\f\0\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\0014\0\0\0%\1\3\0>\0\2\0027\0\4\0003\1\5\0\16\2\0\0%\3\6\0%\4\a\0%\5\b\0004\6\t\0>\2\5\1\16\2\0\0%\3\6\0%\4\n\0%\5\v\0004\6\t\0>\2\5\1G\0\1\0\29:BufferLineCyclePrev<CR>\agB\17default_opts\29:BufferLineCycleNext<CR>\agb\6n\1\0\1\vsilent\2\bmap\19settings.utils\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: vim-system-copy
time([[Config for vim-system-copy]], true)
try_loadstring("\27LJ\1\2‹\1\0\0\2\0\4\0\t4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\1G\0\1\0001let g:system_copy#paste_command = 'wl-paste'/let g:system_copy#copy_command = 'wl-copy'\bcmd\bvim\0", "config", "vim-system-copy")
time([[Config for vim-system-copy]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('settings.plugins.lspconfig')
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
try_loadstring("\27LJ\1\2p\0\0\2\0\4\0\t4\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\6\0:\1\3\0G\0\1\0\31vim_markdown_folding_level(vim_markdown_folding_style_pythonic\6g\bvim\0", "config", "vim-markdown")
time([[Config for vim-markdown]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file EnMasse lua require("packer.load")({'vim-enmasse'}, { cmd = "EnMasse", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
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
