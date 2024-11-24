return {
	-- 'ellisonleao/gruvbox.nvim',
    -- 'rebelot/kanagawa.nvim',
    'projekt0n/github-nvim-theme',
    lazy = false,
	priority = 1000,
	config = function()
        --[[ gruvbox --]]
 

        --[[ kanagawa --]]
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
        
        -- vim.cmd([[colorscheme kanagawa]])
        -- vim.o.background = 'dark'
        
        --[[ github dark --]]
        require('github-theme').setup({
            options = {
                styles = { comments = 'italic' }
            }
        })

        vim.cmd([[colorscheme github_dark_default]])
	end
}

