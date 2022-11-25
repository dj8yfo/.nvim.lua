-- Add the key mappings only for Markdown files in a zk notebook.
if require("zk.util").notebook_root(vim.fn.expand('%:p')) ~= nil then
	local function map(...) vim.api.nvim_buf_set_keymap(0, ...) end
	local opts = { noremap=true, silent=false }

	-- Open the link under the caret.
	map("n", "<CR>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)


	map('n', 'gv', ':sp<CR><CR>', {silent = true} ) 
	map('n', 'gh', ':vs<CR><CR>', {silent = true} )
	map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)

	-- Open the code actions for a visual selection.
	map("v", "<leader>za", ":'<,'>lua vim.lsp.buf.range_code_action()<CR>", opts)
end


local function map(...) vim.api.nvim_buf_set_keymap(0, ...) end
local opts = { noremap=true, silent=false }
map("n", "gP", ":AsyncRun retext %:p<CR>", opts)


vim.o.conceallevel = 2
vim.o.shiftwidth=2
