-- TODO: replace vim-better-whitespace with https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/init.lua#L43-L47
return {
    'ntpeters/vim-better-whitespace',
    enabled = false,
    init = function()
        vim.g.strip_whitespace_on_save = 1
        vim.g.strip_whitespace_confirm = 0
    end
}
