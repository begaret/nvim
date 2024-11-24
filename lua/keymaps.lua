require('terminal')

local map = vim.keymap.set

-- create terminal
map('n', '<leader>t', toggle_terminal)

-- quit all
-- map('n', '<leader>q', ':qa<cr>')
-- map('n', '<leader>x', ':xa<cr>')
map('n', '<leader>e', ':wall | qa<cr>')

-- save
map('n', '<leader>s', ':w<cr>')

