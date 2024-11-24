return {
	'hrsh7th/nvim-cmp',
	event = 'InsertEnter',
	dependencies = {
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'onsails/lspkind.nvim',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets'
	},
	config = function()
		local cmp = require('cmp')
		local luasnip = require('luasnip')
		local lspkind = require('lspkind')

		require('luasnip.loaders.from_vscode').lazy_load()

		vim.opt.completeopt = 'menu,menuone,noselect'
		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end
			},

			mapping = cmp.mapping.preset.insert({
				['<C-space>'] = cmp.mapping.complete(),
				['<Esc>'] = cmp.mapping.abort(),
				['<Tab>'] = cmp.mapping.confirm({select = true})
			}),

			sources = cmp.config.sources({
				{name = 'nvim_lsp'},
				{name = 'luasnip'},
				{name = 'buffer'},
				{name = 'path'}
			})
		})
	end
}

