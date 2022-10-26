
local M = {}

function M.setup_servers(on_attach, capabilities) 
	-- Use a loop to conveniently call 'setup' on multiple servers and
	-- map buffer local keybindings when the language server attaches
	local servers = {'tsserver'}
	for _, lsp in pairs(servers) do
	  require('lspconfig')[lsp].setup {
		on_attach = on_attach,
		capabilities = capabilities,
		flags = {
		  -- This will be the default in neovim 0.7+
		  debounce_text_changes = 150,
		}
	  }
	end

	require('lspconfig')['gopls'].setup({
		cmd = {'gopls'},
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			gopls = {
				experimentalPostfixCompletions = true,
				staticcheck = true,
			},
		},
	})
end
return M
