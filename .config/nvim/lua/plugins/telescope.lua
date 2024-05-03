return {
    'nvim-telescope/telescope.nvim',
    version = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')

        -- Other Telescope's capabilities, for consideration...
        -- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#pickers


        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})             -- Search for files with ripgrep.
        vim.keymap.set('n', '<leader>pgf', builtin.git_files, {})             -- Search for files that's tracked by Git.
        vim.keymap.set('n', '<leader>ps', function() builtin.live_grep() end) -- Search string occurences in current folder.
    end
}
