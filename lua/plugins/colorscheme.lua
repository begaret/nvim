return {
	-- 'ellisonleao/gruvbox.nvim',
    -- 'rebelot/kanagawa.nvim',
    -- 'projekt0n/github-nvim-theme',
    -- 'Mofiqul/vscode.nvim',
	'sainnhe/everforest',
    lazy = false,
	priority = 1000,
	config = function()
        --[[ gruvbox ]]
        -- vim.cmd([[colorscheme gruvbox]])
        -- vim.o.background = 'dark'

        --[[ kanagawa ]]
        -- require('kanagawa').setup({
        --    commentStyle = { italic = true },
        --    functionStyle = { bold = true },
        --    keywordStyle = { italic = true },
        --    statementStyle = { bold = true },
        --
        --    theme = 'dragon',
        --    background = {
        --         dark = 'dragon',
        --         light = 'lotus'
        --    }
        -- })
        -- 
        -- vim.cmd([[colorscheme kanagawa]])
        -- vim.o.background = 'dark'
        
        --[[ github dark ]]
        -- require('github-theme').setup({
        --     options = {
        --         styles = { comments = 'italic' }
        --     }
        -- })
        --
        -- vim.cmd([[colorscheme github_dark_default]])
		
		--[[ everforest ]]
		-- vim.g.everforest_enable_italic = true
		vim.g.everforest_background = 'hard'
		vim.cmd.colorscheme('everforest')
		vim.o.background = 'dark'
        
        --[[ vscode ]]
        -- vim.cmd([[colorscheme vscode]])
        -- vim.o.background = 'dark'
	end
}

