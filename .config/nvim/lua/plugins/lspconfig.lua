require("dhanangw.remap")

return {
    'neovim/nvim-lspconfig',
    dependencies = {
        -- LSP Server management
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-nvim-lsp' },

        -- Snippets
        { 'L3MON4D3/LuaSnip' },
    },
    config = function()
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- Keymaps
        vim.api.nvim_create_autocmd('LspAttach', {
            desc = 'LSP Actions',
            callback = LSP_ON_ATTACH
        })

        -- LSP server management
        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = { 'lua_ls' },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = lsp_capabilities
                    })
                end,

                -- Specific LSP Servers configurations
                lua_ls = function()
                    require('lspconfig').lua_ls.setup({
                        capabilities = lsp_capabilities,
                        settings = {
                            Lua = {
                                runtime = {
                                    version = 'LuaJIT'
                                },
                                workspace = {
                                    checkThirdParty = false,
                                    library = {
                                        vim.env.VIMRUNTIME
                                    }
                                },
                                diagnostics = {
                                    globals = { 'vim' }
                                }
                            }
                        }
                    })
                end,
            }
        })

        -- Autocompletion and Snippets
        local cmp = require('cmp')
        cmp.setup({
            sources = { name = 'nvim_lsp' },
            mapping = cmp.mapping.preset.insert({
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end
            }
        })
    end
}
