local map = require('settings.utils').map

local silent = { silent = true }

map('n', '<c-a>', [[<cmd>Telescope buffers show_all_buffers=true theme=get_dropdown<cr>]], silent)
map('n', '<c-t>', [[<cmd>Telescope frecency theme=get_dropdown<cr>]], silent)

map('n', '<c-s>', [[<cmd>Telescope git_files theme=get_dropdown<cr>]], silent)
map('n', '<c-j>', [[<cmd>Telescope find_files theme=get_dropdown<cr>]], silent)
map('n', '<c-g>', [[<cmd>Telescope live_grep theme=get_dropdown<cr>]], silent)
