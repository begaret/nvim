return {
	"nvim-lualine/lualine.nvim",
	requires = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		require('lualine').setup {
			options = {
				globalstatus = true,
				-- icons_enabled = false,
				theme = "auto",
				section_separators = '',
				component_separators = '|'
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'branch', 'diff', 'diagnostics' },
				lualine_c = { 'filename' },
				lualine_x = { 'encoding', {
					'fileformat',
					icons_enabled = false
				}, 'filetype' },
				lualine_y = { 'progress' },
				lualine_z = { 'location' }
			}
		}
	end
}

