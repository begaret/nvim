vim.cmd([[language en_US]])

require('options')
require('keymaps')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
require('lazy').setup("plugins", {
	change_detection = {
		enabled = true,
		notify = false
	}
})

vim.filetype.add({
    extension = {
        ['txt'] = 'don'
    }
})

vim.filetype.add({
    filename = {
        ['construct.txt'] = 'construct'
    }
})

-- always insert mode in terminal
vim.api.nvim_create_autocmd(
    { "TermOpen", "BufEnter" },
    { pattern = "term://*",
      command = "startinsert" }
)

-- always normal mode outside of terminal
vim.api.nvim_create_autocmd(
    { "TermClose", "BufLeave" },
    { pattern = "term://*",
      command = "stopinsert" }
)

-- open terminal on first buffer
vim.api.nvim_create_autocmd(
    "BufRead", {
    callback = function()
        if not vim.g.has_opened_buffer then
            vim.g.has_opened_buffer = 1
            toggle_terminal()
        end
    end}
)

local ft = require('Comment.ft')
ft.don = '!%s'

