return {
    "rose-pine/neovim",
    init = function()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
    config = function()
        vim.cmd.colorscheme("rose-pine")
    end
}
