nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <c-]> <cmd>lua require"telescope.builtin".lsp_definitions()<CR>

nnoremap <silent> gi    <cmd>lua require"telescope.builtin".lsp_implementations()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <c-,> <cmd>lua vim.lsp.buf.signature_help()<CR>


nnoremap <silent> gr    <cmd>lua require"telescope.builtin".lsp_references()<CR>

nnoremap <silent> <space>ds    <cmd>lua require"telescope.builtin".lsp_document_symbols()<CR>

nnoremap <silent> <space>ws    <cmd>lua require"telescope.builtin".lsp_workspace_symbols({ query = vim.fn.input("query: ") })<CR>

nnoremap <silent> <space>ca    <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <space>rn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <C-,>    <cmd>lua vim.lsp.buf.signature_help()<CR>
inoremap <silent> <C-,>    <cmd>lua vim.lsp.buf.signature_help()<CR>


nnoremap <silent> <space>cp :AsyncRun tmux send-keys -t 1 'cargo-play ' % ' ' Enter<CR>
nnoremap <silent> <space>cb :AsyncRun tmux send-keys -t 1 'cargo build ' Enter<CR>
nnoremap <silent> <space>cr :AsyncRun tmux send-keys -t 1 'cargo run ' Enter<CR>

inoremap <space>; <C-o>A;
nnoremap <space>; A;<esc>_

inoremap <space>, <C-o>A,
nnoremap <space>, A,<esc>_

nmap <silent> gv :sp<CR><c-]>
nmap <silent> gh :vs<CR><c-]>
