return {
    "nvimtools/none-ls.nvim",

    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,

                --cpp
                null_ls.builtins.formatting.clang_format,

                --null_ls.builtins.diagnostics.cppcheck,
                null_ls.builtins.diagnostics.gccdiag,
                --null_ls.builtins.diagnostics.sonarlint_language_server,

                --javascript
                --null_ls.builtins.formatting.prettier,
                --null_ls.builtins.diagnostics.eslint_d,

                --python
                --null_ls.builtins.formatting.black,
                --null_ls.builtins.diagnostics.isort,


                --null_ls.builtins.completion.spell,
                --require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
            },
        })

        vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    end
}
