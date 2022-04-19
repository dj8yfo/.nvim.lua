local exec = vim.api.nvim_exec
exec(
[[
	augroup LuaFiles
	autocmd!
	autocmd FileType lua :set shiftwidth=4
	autocmd FileType lua :set foldmethod=marker
	augroup end
]], false
)
