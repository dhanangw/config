local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- Search for files with ripgrep.
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- Search for files that's tracked in Git.

-- Search string occurences in current folder.
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

