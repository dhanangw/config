  return {
	  'nvim-telescope/telescope.nvim',
      version = '0.1.6',
	  dependencies = {'nvim-lua/plenary.nvim'},
      config = function()
          local builtin = require('telescope.builtin')

          vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- Search for files with ripgrep.
           vim.keymap.set('n', '<leader>pgf', builtin.git_files, {}) -- Search for files that's tracked by Git.
          vim.keymap.set('n', '<leader>ps', function() builtin.live_grep() end)-- Search string occurences in current folder.
      end
  }

