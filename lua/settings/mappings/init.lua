local map = require('settings.utils').map


local default_opts = {noremap = true, silent = true }

map('n', '<c-x>', ':qa!<CR>', default_opts)

map('n', '<m-j>', '<c-w>j', default_opts)
map('n', '<m-k>', '<c-w>k', default_opts)
map('n', '<m-h>', '<c-w>h', default_opts)
map('n', '<m-l>', '<c-w>l', default_opts)

map('n', 'ga', ':let @" = expand("%")<cr>', default_opts)
map('n', 'gA', ':let @" = expand("%:p")<cr>', default_opts)
map('n', 'gw', ':w!<cr>', default_opts)
map('n', 'gW', ':set wrap!<CR>', default_opts)

map('n', 'gn', 'mzi<CR><Esc>`z', default_opts)

map('n', 'gr', ':e!<CR>', default_opts)

-- change workdir to parent of current buffer
map('n', 'g.', ':cd %:h<CR>', default_opts)
map('n', 'g=', '<C-w>=', default_opts)


map('i', '<c-b>', '<Left>', default_opts)
map('i', '<c-f>', '<Right>', default_opts)

vim.cmd [[cmap <c-p> <Up>]]
vim.cmd [[cmap <c-n> <Down>]]

vim.cmd [[cmap <m-f> <Right>]]
vim.cmd [[cmap <m-b> <Left>]]

map('n', 'go', ':copen<CR>', default_opts)
map('n', 'gO', ':cclo<CR>', default_opts)

map('n', 'gO', ':cclo<CR>', default_opts)


map('n', '<leader>fe', [[<cmd>lua require('settings.functions').syntax_fold_expr()<CR>]], default_opts)
map('n', '<leader>te', [[<cmd>tabedit %<CR>]], default_opts)

vim.cmd [[nnoremap gX *``cgn]]
