function toggle_terminal()
    if vim.g.terminal_window then
        vim.fn.win_gotoid(vim.g.terminal_window)
        vim.cmd(':q')
        vim.g.terminal_window = nil
    else
        local old_window = vim.fn.win_getid()

        vim.cmd(':sp')
        vim.cmd(':te')
        vim.cmd(':resize 12')
        vim.cmd(':set wfh')
        vim.g.terminal_window = vim.fn.win_getid()

        vim.fn.win_gotoid(old_window)
    end
end

