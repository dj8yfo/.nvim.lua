require('settings.plugins.lspconfig.keybindings').global_kebindings()
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  require('settings.plugins.lspconfig.keybindings').on_attach_kebindings(bufnr)

end

local capabilities = require('cmp_nvim_lsp').update_capabilities(
	vim.lsp.protocol.make_client_capabilities()
) --nvim-cmp
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('settings.plugins.lspconfig.servers').setup_servers(on_attach, capabilities)

local lsp = vim.lsp

lsp.handlers['textDocument/publishDiagnostics'] = lsp.with(lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = true,
  update_in_insert = false,
  underline = true,
})
