return {
	'nvim-tree/nvim-tree.lua',
	version = '',
	lazy = false,
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},
	config = function()
		require('nvim-tree').setup({
			git = { enable = true, ignore = false, timeout = 500 }
		})

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end
}

