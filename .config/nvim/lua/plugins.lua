return {
  {
	  'nvim-telescope/telescope.nvim',
      version = '0.1.6',
	  dependencies = {'nvim-lua/plenary.nvim'}
  },
  {
      'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'
  },
  {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  },
  {
      'ntpeters/vim-better-whitespace',
      config = function()
          vim.api.nvim_create_autocmd("BufWritePre", {command = ":StripWhitespace"}) -- Automatically remove whitespace when saving files.
      end
  },
  {
      'mbbill/undotree',
      keys = {
          {"<leader>u", function() vim.cmd.UndotreeToggle() end, desc = "Open Undotree"},
      },
  },
  {
      'alexghergh/nvim-tmux-navigation',
      config = function()
          require'nvim-tmux-navigation'.setup {
              disable_when_zoomed = true, -- defaults to falsekeybindings
              keybindings = {
                  left = "<C-h>",
                  down = "<C-j>",
                  up = "<C-k>",
                  right = "<C-l>",
                  last_active = "<C-\\>",
                  next = "<C-Space>",
              }
          }
      end
  },
  {
      "rose-pine/neovim",
      config = function()
          vim.cmd.colorscheme("rose-pine")
          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      end
  },
}

