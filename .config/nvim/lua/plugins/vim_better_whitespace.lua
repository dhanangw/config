return {
    'ntpeters/vim-better-whitespace',
    init = function()
        vim.g.strip_whitespace_on_save = 1
        vim.g.strip_whitespace_confirm = 0
    end
}
