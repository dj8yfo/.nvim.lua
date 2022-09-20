vim.cmd([[filetype plugin on]])

require('settings.filetype.lua')
require('settings.filetype.go')
require('settings.filetype.rust')

local exec = vim.api.nvim_exec
exec(
[[
	augroup AllFiles
	autocmd!
	"autocmd FileType * :NoMatchParen
	augroup end
]], false
)
