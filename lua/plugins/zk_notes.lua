-- {{{ init
-- lua/settings/plugins/lspconfig/servers.lua
local function init(use)
	use({
		'mickael-menu/zk-nvim',
		as = 'zk',

		config = function()
			require("zk").setup({ picker = "telescope" })
			local opts = {noremap = true, silent = true }
			local map = require('settings.utils').map

			-- Create a new note after asking for its title.
			-- This overrides the global `<leader>zn` mapping to create the note in the same directory as the current buffer.
			map(
				"n", 
				"<leader>znn", 
				[[<Cmd>ZkNew { dir = '/home/jerryminion/Documents/code/tasking/zettelkasten', title = vim.fn.input('Title: ') }<CR>]], 
				opts
			)
			-- Create a new note in the same directory as the current buffer, using the current selection for title.
			map(
				"v", 
				"<leader>znt", 
				[[:'<,'>ZkNewFromTitleSelection { dir = '/home/jerryminion/Documents/code/tasking/zettelkasten' }<cr>]], 
				opts
			)

			-- Create a new note in the same directory as the current buffer, using the current selection for note content and asking for its title.
			map(
				"v", "<leader>znc", 
				[[:'<,'>ZkNewFromContentSelection { dir = '/home/jerryminion/Documents/code/tasking/zettelkasten' , title = vim.fn.input('Title: ') }<CR>]], 
				opts
			)

			map( "n", "<leader>zno", "<Cmd>ZkNotes { dir = '/home/jerryminion/Documents/code/tasking/zettelkasten' }<CR>", opts)
			map("n", "<leader>zt", "<Cmd>ZkTags { dir = '/home/jerryminion/Documents/code/tasking/zettelkasten' }<CR>", opts)
			-- Open notes linking to the current buffer.
			map("n", "<leader>zb", "<Cmd>ZkBacklinks { dir = '/home/jerryminion/Documents/code/tasking/zettelkasten' }<CR>", opts)
			-- Alternative for backlinks using pure LSP and showing the source context.
			--map('n', '<leader>zb', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
			-- Open notes linked by the current buffer.
			map("n", "<leader>zl", "<Cmd>ZkLinks { dir = '/home/jerryminion/Documents/code/tasking/zettelkasten' }<CR>", opts)
		end,
	})
end
-- }}}
return { init = init }
