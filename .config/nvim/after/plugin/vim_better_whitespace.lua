vim.api.nvim_create_autocmd("BufWritePre", { command = ":StripWhitespace" }) -- Automatically remove whitespace when saving files.
