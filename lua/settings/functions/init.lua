local M = {}
function M.syntax_fold_expr() 

	vim.o.foldmethod='expr'
	vim.cmd[[set foldexpr=nvim_treesitter#foldexpr()]]
	
end

return M
