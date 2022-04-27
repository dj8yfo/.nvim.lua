local opt = vim.opt

opt.relativenumber = true
local g = vim.g

g.mapleader = [[ ]]
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.grepprg = 'rg -F --vimgrep --no-heading --smart-case'

vim.o.splitright = true
vim.o.splitbelow = false



