return {
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		lazy = true,
		config = function()
			local lsp_zero = require('lsp-zero')

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({buffer = bufnr})
			end)
		end
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'}
		},
		config = function()
			local lsp = require('lspconfig')
            lsp.clangd.setup({})
            lsp.glsl_analyzer.setup({})
            lsp.jsonls.setup({})
            lsp.lua_ls.setup({})
            lsp.cmake.setup({})
		end
	}
}

