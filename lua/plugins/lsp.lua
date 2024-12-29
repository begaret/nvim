return {
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'}
		},

		config = function()
			local lsp_zero = require('lsp-zero').preset({})

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({buffer = bufnr})
			end)

			lsp_zero.setup()

			require('mason').setup()
			require('mason-lspconfig').setup({
				ensure_installed = {
					'lua_ls',
					'clangd',
					'cmake',
					'glsl_analyzer'
				},
				automatic_installation = true
			})

			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			require('lspconfig').lua_ls.setup({
				capabilities = capabilities
			})

			require('lspconfig').clangd.setup({
				capabilities = capabilities
			})

			require('lspconfig').cmake.setup({
				capabilities = capabilities
			})

			require('lspconfig').glsl_analyzer.setup({
				capabilities = capabilities
			})
		end
	}
	-- {
	-- 	'williamboman/mason.nvim',
	-- 	config = function()
	-- 		require('mason').setup()
	-- 	end
	-- },
	-- {
	-- 	'williamboman/mason-lspconfig.nvim',
	-- 	config = function()
	-- 		require('mason-lspconfig').setup()
	-- 	end
	-- },
	-- {
	-- 	'neovim/nvim-lspconfig',
	-- 	dependencies = {
	-- 		{'hrsh7th/cmp-nvim-lsp'}
	-- 	},
	-- 	config = function()
	-- 		local lsp = require('lspconfig')
 --            lsp.clangd.setup({})
 --            lsp.glsl_analyzer.setup({})
 --            lsp.jsonls.setup({})
 --            lsp.lua_ls.setup({})
 --            lsp.cmake.setup({})
	-- 		lsp.angularls.setup({})
	-- 	end
	-- }
}

