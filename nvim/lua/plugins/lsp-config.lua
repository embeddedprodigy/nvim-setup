return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
        --config = function()
            --require("mason-lspconfig").setup({
                --ensure_installed = { "lua_ls", "tsserver", "clangd" }
                --ensure_installed = { "lua_ls", "clangd", "jedi_language_server", "biome" }
               -- ensure_installed = { "lua_ls" }
            --})
        --end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()

            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.tsserver.setup({ -- javascript
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            --lspconfig.ast_grep.setup({
            --    capabilities = capabilities
            --})
            lspconfig.jedi_language_server.setup({ --python
                capabilities = capabilities
            })
            lspconfig.asm_lsp.setup({ --python
                capabilities = capabilities
            })
            --lspconfig.biome.setup({}) --javascript

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set( { 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set( { 'n' }, 'gh', vim.lsp.buf.signature_help, {})
            vim.keymap.set( { 'n' }, 'gt', vim.lsp.buf.incoming_calls, {})
            vim.keymap.set( { 'n' }, 'gf', vim.lsp.buf.outgoing_calls, {})

        end
    }
}
