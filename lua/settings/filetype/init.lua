vim.cmd([[filetype plugin on]])

require('settings.filetype.lua')
require('settings.filetype.zsh')
require('settings.filetype.go')
require('settings.filetype.rust')
require('settings.filetype.javascript')

local exec = vim.api.nvim_exec
exec(
[[
	augroup AllFiles
	autocmd!
	"autocmd FileType * :NoMatchParen
	augroup end
]], false
)
