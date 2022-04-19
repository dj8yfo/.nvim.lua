local map = vim.api.nvim_set_keymap


local default_opts = {noremap = true, silent = true }

map('n', '<F1>', ':nohl<CR>', default_opts)
