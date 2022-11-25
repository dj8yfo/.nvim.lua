local M = {}
function M.syntax_fold_expr() 

	vim.o.foldmethod='expr'
	vim.cmd[[set foldexpr=nvim_treesitter#foldexpr()]]
	
end

function M.line_tab_file() 
	local line = vim.fn.line(".")

	local variable_result= "tabedit +" .. line .. " %"
	vim.cmd(variable_result)
	
end

function M.file_line_string() 
	local line = vim.fn.line(".")
	local file = vim.fn.expand('%:p')

	local result = file ..":" ..line
	print(result)
	vim.fn.setreg("+", result)
	return result
	
end

return M

