local exec = vim.api.nvim_exec
exec(
[[
	augroup RustFiles
	autocmd!
    autocmd FileType rust :set fp=rustfmt\ --edition\ 2018
    autocmd FileType rust :iabbrev <buffer> n= !=
    autocmd FileType rust :iabbrev <buffer> pz __PLACE__
    autocmd FileType rust :set shiftwidth=4
    autocmd FileType rust :set tabstop=4
	augroup end
]], false
)
