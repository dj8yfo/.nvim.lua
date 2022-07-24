local exec = vim.api.nvim_exec
exec(
[[
	augroup GoFiles
	autocmd!
    autocmd FileType go :set fp=gofmt
    autocmd FileType go :iabbrev <buffer> s= :=
    autocmd FileType go :iabbrev <buffer> n= !=
    autocmd FileType go :iabbrev <buffer> zi, <-
    autocmd FileType go :iabbrev <buffer> pz __PLACE__
    autocmd FileType go :set shiftwidth=4
    autocmd FileType go :set tabstop=4
	augroup end
]], false
)
