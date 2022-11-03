local exec = vim.api.nvim_exec
exec(
[[
	augroup JSFiles
	autocmd!
    autocmd FileType typescript :set shiftwidth=2
    autocmd FileType typescript :set tabstop=2
	augroup end
]], false
)
