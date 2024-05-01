vim.g.mapleader = " "  -- set Space as Leader Key
vim.opt.guicursor = "" -- Block cursor.

-- Line numbers.
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 space indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false -- Disable line wrap.

-- '/' search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"


-- Netrw
vim.g.netrw_liststyle = 3 -- tree style
vim.g.netrw_banner = 0    -- hide banner

-- undo configurations
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.diagnostic.config({
    virtual_text = true
})
