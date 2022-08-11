nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <c-]> <cmd>lua require"telescope.builtin".lsp_definitions()<CR>

nnoremap <silent> gi    <cmd>lua require"telescope.builtin".lsp_implementations()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <c-,> <cmd>lua vim.lsp.buf.signature_help()<CR>


nnoremap <silent> gr    <cmd>lua require"telescope.builtin".lsp_references()<CR>

nnoremap <silent> <space>ds    <cmd>lua require"telescope.builtin".lsp_document_symbols()<CR>

nnoremap <silent> <space>ws    <cmd>lua require"telescope.builtin".lsp_workspace_symbols({ query = vim.fn.input("query: ") })<CR>

