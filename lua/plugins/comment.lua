return {
	"numToStr/Comment.nvim",
	lazy = false,
	config = function()
		require('Comment').setup({
			toggler = {
				line = '<leader>c',
				block = '<leader>b'
			},
            opleader = {
                line = '<leader>cc',
                block = '<leader>bb'
            }
		})
	end
}

