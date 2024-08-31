return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lsp_config = require("lspconfig")
            lsp_config.lua_ls.setup({})
            lsp_config.tsserver.setup({})

            vim.keymap.set({ "n", "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        end,
    },
}
