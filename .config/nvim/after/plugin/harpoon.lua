local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end) -- mark file to Harpoon list.
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end) -- open Harpoon list.

-- We shouldn't need more than 4 files open.
vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end) -- jump to file 1.
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end) -- jump to file 2.
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end) -- jump to file 3.
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end) -- jump to file 4.

