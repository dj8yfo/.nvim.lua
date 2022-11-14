local exec = vim.api.nvim_exec
exec(
[[
	augroup ZshFiles
	autocmd!
	autocmd FileType zsh :set shiftwidth=4 tabstop=4
	autocmd FileType zsh :set foldmethod=marker
	augroup end
]], false
)
