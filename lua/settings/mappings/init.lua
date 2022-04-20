local map = require('settings.utils').map


local default_opts = {noremap = true, silent = true }

map('n', '<F1>', ':nohl<CR>', default_opts)
map('n', '<c-x>', ':qa!<CR>', default_opts)
