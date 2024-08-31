return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            debug = true,
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                require("none-ls.diagnostics.eslint_d"),
            },
        })
        vim.keymap.set("n", "<leader>fb", vim.lsp.buf.format, {})
    end,
}
