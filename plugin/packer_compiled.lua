-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

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
  ["ack.vim"] = {
    config = { "\27LJ\2\nW\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0008let g:ackprg = 'rg --smart-case --ignore --vimgrep'\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/ack.vim",
    url = "https://github.com/mileszs/ack.vim"
  },
  ["asyncrun.vim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14log_level\nerror\nsetup\17auto-session\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
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
  ["cosmic-barf"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/cosmic-barf",
    url = "https://github.com/evturn/cosmic-barf"
  },
  ["diffview.nvim"] = {
    config = { "require('settings.plugins.diffview')" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30settings.plugins.gitsigns\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  heman = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/heman",
    url = "https://github.com/kjohnsen/heman"
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
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  meta5 = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/meta5",
    url = "https://github.com/christophermca/meta5"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
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
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n½\1\0\0\3\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\0016\0\4\0009\0\5\0'\2\a\0B\0\2\1K\0\1\0 nmap gB :NvimTreeToggle<CR>\"nmap gb :NvimTreeFindFile<CR>\bcmd\bvim\1\0\2\17hijack_netrw\1\18disable_netrw\1\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
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
  ["quantum.vim"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/quantum.vim",
    url = "https://github.com/kjssad/quantum.vim"
  },
  rocket = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/rocket",
    url = "https://github.com/AlanWarren/rocket"
  },
  ["rust-tools.nvim"] = {
    config = { "require('settings.plugins.lspconfig.langs.rust-tools')" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["scratch.vim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/scratch.vim",
    url = "https://github.com/mtth/scratch.vim"
  },
  sonokai = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n€\2\0\0\4\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\1'\3\a\0B\1\2\0016\1\5\0009\1\6\1'\3\b\0B\1\2\1K\0\1\0-nnoremap <silent> gK :SymbolsOutline<cr>Innoremap <silent> gk :SymbolsOutlineClose<cr>:SymbolsOutlineOpen<cr>\bcmd\bvim\1\0\2\vsilent\2\fnoremap\2\1\0\1\rposition\tleft\nsetup\20symbols-outline\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tabby.nvim"] = {
    config = { "\27LJ\2\n¤\2\0\1\b\2\15\0/9\1\0\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1\14\0\1\0X\2\2€-\1\0\0009\1\2\0015\2\r\0-\3\1\0009\3\3\3'\5\4\0\18\6\1\0-\a\0\0009\a\5\aB\3\4\2>\3\1\0029\3\0\0B\3\1\2\15\0\3\0X\4\2€'\3\6\0X\4\1€'\3\a\0>\3\2\0029\3\b\0B\3\1\2>\3\3\0029\3\t\0B\3\1\2>\3\4\0029\3\n\0'\5\v\0B\3\2\2>\3\5\2-\3\1\0009\3\3\3'\5\f\0\18\6\1\0-\a\0\0009\a\5\aB\3\4\2>\3\6\2=\1\14\2L\2\2\0\0\0\0À\ahl\1\0\1\vmargin\6 \bî‚¼\bï€\14close_btn\tname\vnumber\bïš¢\bï†’\tfill\bî‚º\bsep\btab\16current_tab\15is_currentÓ\1\0\1\a\2\v\0\"5\1\t\0-\2\0\0009\2\0\2'\4\1\0-\5\1\0009\5\2\5-\6\1\0009\6\3\6B\2\4\2>\2\1\0019\2\4\0B\2\1\2\15\0\2\0X\3\2€'\2\5\0X\3\1€'\2\6\0>\2\2\0019\2\a\0B\2\1\2>\2\3\1-\2\0\0009\2\0\2'\4\b\0-\5\1\0009\5\2\5-\6\1\0009\6\3\6B\2\4\2>\2\4\1-\2\1\0009\2\2\2=\2\n\1L\1\2\0\0À\0\0\ahl\1\0\1\vmargin\6 \bî‚¼\rbuf_name\bï„Œ\bï†’\15is_current\tfill\bwin\bî‚º\bsepÒ\2\1\1\b\1\18\00165\1\17\0004\2\3\0005\3\0\0-\4\0\0009\4\1\4=\4\2\3>\3\1\0029\3\3\0'\5\4\0-\6\0\0009\6\1\6-\a\0\0009\a\5\aB\3\4\0?\3\0\0>\2\1\0019\2\6\0B\2\1\0029\2\a\0023\4\b\0B\2\2\2>\2\2\0019\2\t\0B\2\1\2>\2\3\0019\2\n\0009\4\v\0009\4\f\4B\4\1\0A\2\0\0029\2\a\0023\4\r\0B\2\2\2>\2\4\0014\2\3\0009\3\3\0'\5\14\0-\6\0\0009\6\15\6-\a\0\0009\a\5\aB\3\4\2>\3\1\0025\3\16\0-\4\0\0009\4\15\4=\4\2\3>\3\2\2>\2\5\1-\2\0\0009\2\5\2=\2\2\0012\0\0€L\1\2\0\0À\1\0\0\1\2\0\0\n ïƒ¶ \ttail\bî‚º\0\20get_current_tab\bapi\16wins_in_tab\vspacer\0\fforeach\ttabs\tfill\bî‚¼\bsep\ahl\thead\1\2\0\0\n îŸ… \5€€À™\4£\1\1\0\4\0\5\0\t5\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0013\3\4\0B\1\2\0012\0\0€K\0\1\0\0\bset\18tabby.tabline\frequire\1\0\6\btab\fTabLine\16current_tab\15TabLineSel\tfill\16TabLineFill\ttail\fTabLine\bwin\fTabLine\thead\fTabLine\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/tabby.nvim",
    url = "https://github.com/nanozuki/tabby.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
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
  ["telescope.nvim"] = {
    after = { "telescope-frecency.nvim", "telescope-fzf-native.nvim" },
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
    config = { "\27LJ\2\nÜ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0¼\1\t\t\t\tif has(\"persistent_undo\")\n\t\t\t\t   let target_path = expand('~/.nvim_undodir')\n\n\n\t\t\t\t\tlet &undodir=target_path\n\t\t\t\t\tset undofile\n\t\t\t\tendif\n\n\t\t\t\tnnoremap <F5> :UndotreeToggle<CR>\n\t\t\t\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-bookmarks"] = {
    config = { "\27LJ\2\nx\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0!let g:bookmark_auto_save = 1,let g:bookmark_save_per_working_dir = 1\bcmd\bvim\0" },
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
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-dirvish",
    url = "https://github.com/justinmk/vim-dirvish"
  },
  ["vim-easymotion"] = {
    config = { "\27LJ\2\nÒ\1\0\0\3\0\a\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\5\0)\1\1\0=\1\6\0K\0\1\0\25EasyMotion_smartcase\6g%omap gy <Plug>(easymotion-bd-f2)%xmap gy <Plug>(easymotion-bd-f2)*nmap gy <Plug>(easymotion-overwin-f2)\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-edgemotion"] = {
    config = { "\27LJ\2\n«\1\0\0\5\0\b\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\2'\4\6\0B\2\2\0016\2\4\0009\2\5\2'\4\a\0B\2\2\1K\0\1\0#map <C-k> <Plug>(edgemotion-k)#map <C-j> <Plug>(edgemotion-j)\bcmd\bvim\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-edgemotion",
    url = "https://github.com/haya14busa/vim-edgemotion"
  },
  ["vim-enfocado"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\"let g:enfocado_style = 'neon'\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-enfocado",
    url = "https://github.com/wuelnerdotexe/vim-enfocado"
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
    config = { "\27LJ\2\nÓ\3\0\0\3\0\n\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\1K\0\1\0-hi HiColor8 guifg=MistyRose guibg=gray22-hi HiColor7 guifg=OliveDrab guibg=gray22(hi HiColor6 guifg=gold guibg=gray22-hi HiColor5 guifg=turquoise guibg=gray22-hi HiColor4 guifg=LightCyan guibg=gray22/hi HiColor3 guifg=GreenYellow guibg=gray22*hi HiColor2 guifg=yellow guibg=gray22+hi HiColor1 guifg=HotPink guibg=gray22\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-highlighter",
    url = "https://github.com/azabiong/vim-highlighter"
  },
  ["vim-indentwise"] = {
    config = { "\27LJ\2\n…\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0/map ]w <Plug>(IndentWiseNextGreaterIndent)3map [w <Plug>(IndentWisePreviousGreaterIndent).map ]s <Plug>(IndentWiseNextLesserIndent)2map [s <Plug>(IndentWisePreviousLesserIndent)\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-indentwise",
    url = "https://github.com/jeetsukumaran/vim-indentwise"
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
    config = { "\27LJ\2\nÍ\3\0\0\3\0\n\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\1K\0\1\0#nmap <M-w> <Plug>SlimeLineSend%nmap <M-;> <Plug>SlimeMotionSend%xmap <M-;> <Plug>SlimeRegionSend let g:slime_no_mappings = 1#let g:slime_python_ipython = 1Xlet g:slime_default_config = {\"socket_name\": \"default\", \"target_pane\": \"{down-of}\"}2let g:slime_paste_file = \"$HOME/.slime_paste\" let g:slime_target = \"tmux\"\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-slime",
    url = "https://github.com/jpalardy/vim-slime"
  },
  ["vim-sneak"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\31let g:sneak#use_ic_scs = 1\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-sneak",
    url = "https://github.com/justinmk/vim-sneak"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\nü\2\0\0\3\0\b\0\0256\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\1K\0\1\0003nnoremap <silent> <m-l> :TmuxNavigateRight<cr>0nnoremap <silent> <m-k> :TmuxNavigateUp<cr>2nnoremap <silent> <m-j> :TmuxNavigateDown<cr>2nnoremap <silent> <m-h> :TmuxNavigateLeft<cr>1let g:tmux_navigator_disable_when_zoomed = 1)let g:tmux_navigator_no_mappings = 1\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-togglelist"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/opt/vim-togglelist",
    url = "https://github.com/milkypostman/vim-togglelist"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-venter"] = {
    config = { "\27LJ\2\nŸ\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0'let g:venter_disable_vertsplit = 1#let g:venter_use_textwidth = 1\30nmap gz :VenterToggle<CR>\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jerryminion/.local/share/nvim/site/pack/packer/start/vim-venter",
    url = "https://github.com/jmckiern/vim-venter"
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

-- Setup for: asyncrun.vim
time([[Setup for asyncrun.vim]], true)
try_loadstring("\27LJ\2\n¼\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0,nmap <leader>mt :AsyncRun make test<cr>,nmap <leader>ml :AsyncRun make lint<cr>-nmap <leader>mb :AsyncRun make build<cr>\bcmd\bvim\0", "setup", "asyncrun.vim")
time([[Setup for asyncrun.vim]], false)
time([[packadd for asyncrun.vim]], true)
vim.cmd [[packadd asyncrun.vim]]
time([[packadd for asyncrun.vim]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
require('settings.plugins.telescope_setup')
time([[Setup for telescope.nvim]], false)
-- Setup for: vim-togglelist
time([[Setup for vim-togglelist]], true)
try_loadstring("\27LJ\2\n×\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0&let g:toggle_list_no_mappings = 1=nmap <script> <silent> go :call ToggleQuickfixList()<CR>=nmap <script> <silent> g; :call ToggleLocationList()<CR>\bcmd\bvim\0", "setup", "vim-togglelist")
time([[Setup for vim-togglelist]], false)
time([[packadd for vim-togglelist]], true)
vim.cmd [[packadd vim-togglelist]]
time([[packadd for vim-togglelist]], false)
-- Setup for: vim-grep-operator
time([[Setup for vim-grep-operator]], true)
try_loadstring("\27LJ\2\n›\1\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0008vmap <leader>g <Plug>GrepOperatorOnCurrentDirectory8nmap <leader>g <Plug>GrepOperatorOnCurrentDirectory\bcmd\bvim\0", "setup", "vim-grep-operator")
time([[Setup for vim-grep-operator]], false)
time([[packadd for vim-grep-operator]], true)
vim.cmd [[packadd vim-grep-operator]]
time([[packadd for vim-grep-operator]], false)
-- Setup for: vim-sayonara
time([[Setup for vim-sayonara]], true)
try_loadstring("\27LJ\2\ns\0\0\a\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1K\0\1\0\1\0\1\vsilent\2\22<cmd>Sayonara<CR>\n<m-q>\6n\bmap\19settings.utils\frequire\0", "setup", "vim-sayonara")
time([[Setup for vim-sayonara]], false)
-- Setup for: scratch.vim
time([[Setup for scratch.vim]], true)
try_loadstring("\27LJ\2\nE\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0&let g:scratch_insert_autohide = 0\bcmd\bvim\0", "setup", "scratch.vim")
time([[Setup for scratch.vim]], false)
time([[packadd for scratch.vim]], true)
vim.cmd [[packadd scratch.vim]]
time([[packadd for scratch.vim]], false)
-- Setup for: nvim-lightbulb
time([[Setup for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\n—\1\0\0\3\0\5\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0B\0\2\1K\0\1\0-hi link LightBulbVirtualText YellowFloat*hi link LightBulbFloatWin YellowFloat\17nvim_command\bapi\bvim\0", "setup", "nvim-lightbulb")
time([[Setup for nvim-lightbulb]], false)
time([[packadd for nvim-lightbulb]], true)
vim.cmd [[packadd nvim-lightbulb]]
time([[packadd for nvim-lightbulb]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: vim-highlighter
time([[Config for vim-highlighter]], true)
try_loadstring("\27LJ\2\nÓ\3\0\0\3\0\n\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\1K\0\1\0-hi HiColor8 guifg=MistyRose guibg=gray22-hi HiColor7 guifg=OliveDrab guibg=gray22(hi HiColor6 guifg=gold guibg=gray22-hi HiColor5 guifg=turquoise guibg=gray22-hi HiColor4 guifg=LightCyan guibg=gray22/hi HiColor3 guifg=GreenYellow guibg=gray22*hi HiColor2 guifg=yellow guibg=gray22+hi HiColor1 guifg=HotPink guibg=gray22\bcmd\bvim\0", "config", "vim-highlighter")
time([[Config for vim-highlighter]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\nÜ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0¼\1\t\t\t\tif has(\"persistent_undo\")\n\t\t\t\t   let target_path = expand('~/.nvim_undodir')\n\n\n\t\t\t\t\tlet &undodir=target_path\n\t\t\t\t\tset undofile\n\t\t\t\tendif\n\n\t\t\t\tnnoremap <F5> :UndotreeToggle<CR>\n\t\t\t\bcmd\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('settings.plugins.lspconfig')
time([[Config for nvim-lspconfig]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
require('settings.plugins.lspconfig.langs.rust-tools')
time([[Config for rust-tools.nvim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\nv\0\0\b\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\24<cmd>Git commit<CR>\agC\6n\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('settings.plugins.treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
try_loadstring("\27LJ\2\np\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\6\0=\1\3\0K\0\1\0\31vim_markdown_folding_level(vim_markdown_folding_style_pythonic\6g\bvim\0", "config", "vim-markdown")
time([[Config for vim-markdown]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: vim-sneak
time([[Config for vim-sneak]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\31let g:sneak#use_ic_scs = 1\bcmd\bvim\0", "config", "vim-sneak")
time([[Config for vim-sneak]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n½\1\0\0\3\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\0016\0\4\0009\0\5\0'\2\a\0B\0\2\1K\0\1\0 nmap gB :NvimTreeToggle<CR>\"nmap gb :NvimTreeFindFile<CR>\bcmd\bvim\1\0\2\17hijack_netrw\1\18disable_netrw\1\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: vim-slime
time([[Config for vim-slime]], true)
try_loadstring("\27LJ\2\nÍ\3\0\0\3\0\n\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\1K\0\1\0#nmap <M-w> <Plug>SlimeLineSend%nmap <M-;> <Plug>SlimeMotionSend%xmap <M-;> <Plug>SlimeRegionSend let g:slime_no_mappings = 1#let g:slime_python_ipython = 1Xlet g:slime_default_config = {\"socket_name\": \"default\", \"target_pane\": \"{down-of}\"}2let g:slime_paste_file = \"$HOME/.slime_paste\" let g:slime_target = \"tmux\"\bcmd\bvim\0", "config", "vim-slime")
time([[Config for vim-slime]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14log_level\nerror\nsetup\17auto-session\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: lsp-status.nvim
time([[Config for lsp-status.nvim]], true)
require('settings.plugins.lsp-status')
time([[Config for lsp-status.nvim]], false)
-- Config for: vim-venter
time([[Config for vim-venter]], true)
try_loadstring("\27LJ\2\nŸ\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0'let g:venter_disable_vertsplit = 1#let g:venter_use_textwidth = 1\30nmap gz :VenterToggle<CR>\bcmd\bvim\0", "config", "vim-venter")
time([[Config for vim-venter]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30settings.plugins.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: vim-edgemotion
time([[Config for vim-edgemotion]], true)
try_loadstring("\27LJ\2\n«\1\0\0\5\0\b\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\2'\4\6\0B\2\2\0016\2\4\0009\2\5\2'\4\a\0B\2\2\1K\0\1\0#map <C-k> <Plug>(edgemotion-k)#map <C-j> <Plug>(edgemotion-j)\bcmd\bvim\1\0\1\vsilent\2\bmap\19settings.utils\frequire\0", "config", "vim-edgemotion")
time([[Config for vim-edgemotion]], false)
-- Config for: ack.vim
time([[Config for ack.vim]], true)
try_loadstring("\27LJ\2\nW\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0008let g:ackprg = 'rg --smart-case --ignore --vimgrep'\bcmd\bvim\0", "config", "ack.vim")
time([[Config for ack.vim]], false)
-- Config for: vim-enfocado
time([[Config for vim-enfocado]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\"let g:enfocado_style = 'neon'\bcmd\bvim\0", "config", "vim-enfocado")
time([[Config for vim-enfocado]], false)
-- Config for: vim-easymotion
time([[Config for vim-easymotion]], true)
try_loadstring("\27LJ\2\nÒ\1\0\0\3\0\a\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\5\0)\1\1\0=\1\6\0K\0\1\0\25EasyMotion_smartcase\6g%omap gy <Plug>(easymotion-bd-f2)%xmap gy <Plug>(easymotion-bd-f2)*nmap gy <Plug>(easymotion-overwin-f2)\bcmd\bvim\0", "config", "vim-easymotion")
time([[Config for vim-easymotion]], false)
-- Config for: zk
time([[Config for zk]], true)
require("zk").setup(
		{
			picker = "telescope",
		}
		)
time([[Config for zk]], false)
-- Config for: tabby.nvim
time([[Config for tabby.nvim]], true)
try_loadstring("\27LJ\2\n¤\2\0\1\b\2\15\0/9\1\0\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1\14\0\1\0X\2\2€-\1\0\0009\1\2\0015\2\r\0-\3\1\0009\3\3\3'\5\4\0\18\6\1\0-\a\0\0009\a\5\aB\3\4\2>\3\1\0029\3\0\0B\3\1\2\15\0\3\0X\4\2€'\3\6\0X\4\1€'\3\a\0>\3\2\0029\3\b\0B\3\1\2>\3\3\0029\3\t\0B\3\1\2>\3\4\0029\3\n\0'\5\v\0B\3\2\2>\3\5\2-\3\1\0009\3\3\3'\5\f\0\18\6\1\0-\a\0\0009\a\5\aB\3\4\2>\3\6\2=\1\14\2L\2\2\0\0\0\0À\ahl\1\0\1\vmargin\6 \bî‚¼\bï€\14close_btn\tname\vnumber\bïš¢\bï†’\tfill\bî‚º\bsep\btab\16current_tab\15is_currentÓ\1\0\1\a\2\v\0\"5\1\t\0-\2\0\0009\2\0\2'\4\1\0-\5\1\0009\5\2\5-\6\1\0009\6\3\6B\2\4\2>\2\1\0019\2\4\0B\2\1\2\15\0\2\0X\3\2€'\2\5\0X\3\1€'\2\6\0>\2\2\0019\2\a\0B\2\1\2>\2\3\1-\2\0\0009\2\0\2'\4\b\0-\5\1\0009\5\2\5-\6\1\0009\6\3\6B\2\4\2>\2\4\1-\2\1\0009\2\2\2=\2\n\1L\1\2\0\0À\0\0\ahl\1\0\1\vmargin\6 \bî‚¼\rbuf_name\bï„Œ\bï†’\15is_current\tfill\bwin\bî‚º\bsepÒ\2\1\1\b\1\18\00165\1\17\0004\2\3\0005\3\0\0-\4\0\0009\4\1\4=\4\2\3>\3\1\0029\3\3\0'\5\4\0-\6\0\0009\6\1\6-\a\0\0009\a\5\aB\3\4\0?\3\0\0>\2\1\0019\2\6\0B\2\1\0029\2\a\0023\4\b\0B\2\2\2>\2\2\0019\2\t\0B\2\1\2>\2\3\0019\2\n\0009\4\v\0009\4\f\4B\4\1\0A\2\0\0029\2\a\0023\4\r\0B\2\2\2>\2\4\0014\2\3\0009\3\3\0'\5\14\0-\6\0\0009\6\15\6-\a\0\0009\a\5\aB\3\4\2>\3\1\0025\3\16\0-\4\0\0009\4\15\4=\4\2\3>\3\2\2>\2\5\1-\2\0\0009\2\5\2=\2\2\0012\0\0€L\1\2\0\0À\1\0\0\1\2\0\0\n ïƒ¶ \ttail\bî‚º\0\20get_current_tab\bapi\16wins_in_tab\vspacer\0\fforeach\ttabs\tfill\bî‚¼\bsep\ahl\thead\1\2\0\0\n îŸ… \5€€À™\4£\1\1\0\4\0\5\0\t5\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0013\3\4\0B\1\2\0012\0\0€K\0\1\0\0\bset\18tabby.tabline\frequire\1\0\6\btab\fTabLine\16current_tab\15TabLineSel\tfill\16TabLineFill\ttail\fTabLine\bwin\fTabLine\thead\fTabLine\0", "config", "tabby.nvim")
time([[Config for tabby.nvim]], false)
-- Config for: vim-dirvish
time([[Config for vim-dirvish]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-dirvish")
time([[Config for vim-dirvish]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\nü\2\0\0\3\0\b\0\0256\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\1K\0\1\0003nnoremap <silent> <m-l> :TmuxNavigateRight<cr>0nnoremap <silent> <m-k> :TmuxNavigateUp<cr>2nnoremap <silent> <m-j> :TmuxNavigateDown<cr>2nnoremap <silent> <m-h> :TmuxNavigateLeft<cr>1let g:tmux_navigator_disable_when_zoomed = 1)let g:tmux_navigator_no_mappings = 1\bcmd\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n€\2\0\0\4\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\1'\3\a\0B\1\2\0016\1\5\0009\1\6\1'\3\b\0B\1\2\1K\0\1\0-nnoremap <silent> gK :SymbolsOutline<cr>Innoremap <silent> gk :SymbolsOutlineClose<cr>:SymbolsOutlineOpen<cr>\bcmd\bvim\1\0\2\vsilent\2\fnoremap\2\1\0\1\rposition\tleft\nsetup\20symbols-outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: packer.nvim
time([[Config for packer.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0$nmap <leader>ps :PackerSync<cr>\bcmd\bvim\0", "config", "packer.nvim")
time([[Config for packer.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
require('settings.plugins.diffview')
time([[Config for diffview.nvim]], false)
-- Config for: vim-indentwise
time([[Config for vim-indentwise]], true)
try_loadstring("\27LJ\2\n…\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0/map ]w <Plug>(IndentWiseNextGreaterIndent)3map [w <Plug>(IndentWisePreviousGreaterIndent).map ]s <Plug>(IndentWiseNextLesserIndent)2map [s <Plug>(IndentWisePreviousLesserIndent)\bcmd\bvim\0", "config", "vim-indentwise")
time([[Config for vim-indentwise]], false)
-- Config for: vim-bookmarks
time([[Config for vim-bookmarks]], true)
try_loadstring("\27LJ\2\nx\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0!let g:bookmark_auto_save = 1,let g:bookmark_save_per_working_dir = 1\bcmd\bvim\0", "config", "vim-bookmarks")
time([[Config for vim-bookmarks]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Sayonara lua require("packer.load")({'vim-sayonara'}, { cmd = "Sayonara", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file EnMasse lua require("packer.load")({'vim-enmasse'}, { cmd = "EnMasse", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
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

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
