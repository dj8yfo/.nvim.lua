local map = require('settings.utils').map

local silent = { silent = true }

map('n', '<m-a>', [[<cmd>Telescope buffers show_all_buffers=true theme=get_ivy<cr>]], silent)
map('n', '<m-f>', [[<cmd>Telescope frecency theme=get_ivy<cr>]], silent)

map('n', '<m-s>', [[<cmd>Telescope git_files theme=get_ivy<cr>]], silent)
map('n', '<m-m>', [[<cmd>Telescope git_status theme=get_ivy<cr>]], silent)
map('n', '<m-,>', [[<cmd>Telescope find_files theme=get_ivy<cr>]], silent)
map('n', '<m-g>', [[<cmd>Telescope live_grep theme=get_ivy<cr>]], silent)

map('n', 'g?', [[<cmd>Telescope command_history theme=get_ivy<cr>]], silent)
map('n', 'g/', [[<cmd>Telescope search_history theme=get_ivy<cr>]], silent)
map('n', 'gm', [[<cmd>Telescope marks theme=get_ivy layout_strategy=vertical<cr>]], silent)
map('n', '<space>l', [[<cmd>Telescope quickfix theme=get_ivy layout_strategy=vertical<cr>]], silent)
