local map = require('settings.utils').map


local default_opts = {noremap = true, silent = true }

map('n', '<f8>', ':qa!<CR>', default_opts)

map('n', '<m-j>', '<c-w>j', default_opts)
map('n', '<m-k>', '<c-w>k', default_opts)
map('n', '<m-h>', '<c-w>h', default_opts)
map('n', '<m-l>', '<c-w>l', default_opts)

map('n', 'ga', ':let @+ = expand("%")<cr>', default_opts)
map('n', 'gA', ':let @+ = expand("%:p")<cr>', default_opts)
map('n', 'gw', ':w!<cr>', default_opts)
map('n', 'gW', ':set wrap!<CR>', default_opts)

map('n', 'gn', 'mzi<CR><Esc>`z', default_opts)

map('n', 'gR', ':e!<CR>', default_opts)

-- change workdir to parent of current buffer
map('n', 'g.', ':cd %:h<CR>', default_opts)
map('n', 'g=', '<C-w>=', default_opts)


map('i', '<c-b>', '<Left>', default_opts)
map('i', '<c-f>', '<Right>', default_opts)

vim.cmd [[cmap <c-p> <Up>]]
vim.cmd [[cmap <c-n> <Down>]]

vim.cmd [[cmap <m-f> <Right>]]
vim.cmd [[cmap <m-b> <Left>]]


map('n', '<m-o>', '<c-w>o', default_opts)

map('n', '<leader>fe', [[<cmd>lua require('settings.functions').syntax_fold_expr()<CR>]], default_opts)
map('n', '<leader>te', [[<cmd>lua require('settings.functions').line_tab_file()<CR>]], default_opts)
map('n', 'gL', [[<cmd>lua require('settings.functions').file_line_string()<CR>]], default_opts)

map('n', '<f11>', [[<cmd>hi Comment guifg=#111111<CR>]], default_opts)
map('n', '<f12>', [[<cmd>hi Comment guifg=lightgreen<CR>]], default_opts)



map('n', 'gV', '<esc>ggVG', default_opts)
map('v', 'gV', '<esc>ggVG', default_opts)


vim.cmd [[nnoremap gX *``cgn]]

vim.cmd 'nnoremap gl `[v`]'

vim.cmd[[nnoremap <silent> <space>ls    <cmd>LspStop<CR>]]
vim.cmd[[nnoremap <silent> <space>lS    <cmd>LspStart<CR>]]

vim.cmd[[nnoremap <silent> <space>vg    <cmd>vimgrep //g %<CR>]]
