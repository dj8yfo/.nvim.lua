local lsp_status = require('lsp-status')
-- kind_symbols ------ {{{
local kind_symbols = {
	Text = '  ',
	Method = '  ',
	Function = '  ',
	Constructor = '  ',
	Field = '  ',
	Variable = '  ',
	Class = '  ',
	Interface = '  ',
	Module = '  ',
	Property = '  ',
	Unit = '  ',
	Value = '  ',
	Enum = '  ',
	Keyword = '  ',
	Snippet = '  ',
	Color = '  ',
	File = '  ',
	Reference = '  ',
	Folder = '  ',
	EnumMember = '  ',
	Constant = '  ',
	Struct = '  ',
	Event = '  ',
	Operator = '  ',
	TypeParameter = '  ',
}
-- }}}

local sign_define = vim.fn.sign_define
sign_define('DiagnosticSignError', { text = '', numhl = 'RedSign' })
sign_define('DiagnosticSignWarn', { text = '', numhl = 'YellowSign' })
sign_define('DiagnosticSignInfo', { text = '', numhl = 'WhiteSign' })
sign_define('DiagnosticSignHint', { text = '', numhl = 'BlueSign' })
lsp_status.config({
	kind_labels = kind_symbols,
	select_symbol = function(cursor_pos, symbol)
		if symbol.valueRange then
			local value_range = {
				['start'] = { character = 0, line = vim.fn.byte2line(symbol.valueRange[1]) },
				['end'] = { character = 0, line = vim.fn.byte2line(symbol.valueRange[2]) },
			}

			return require('lsp-status/util').in_range(cursor_pos, value_range)
		end
	end,
	current_function = false,
})
lsp_status.register_progress()
