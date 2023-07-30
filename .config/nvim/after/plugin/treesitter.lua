local ts = require('nvim-treesitter.configs')

local languages = { "javascript", "typescript", "lua", "rust", "c", "vimdoc", "markdown" };

ts.setup {
	ensure_installed = languages,
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true
	},
	indent = {
		enabled = true
	}
}
