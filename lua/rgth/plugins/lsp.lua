return {
    --
    -- Mason
    -- ------------------------------------------------------------------------
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    --
    -- Mason (LSP Config)
    -- ------------------------------------------------------------------------
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "html",
                    -- "htmx",
                    "lua_ls",
                    "pyright",
                    "rust_analyzer",
                }
            })
        end
    },
    --
    -- LSP Config
    -- ------------------------------------------------------------------------
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.pyright.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.lua_ls.setup({})
            vim.keymap.set("n", "?", vim.lsp.buf.hover)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
            vim.keymap.set("n", "gr", vim.lsp.buf.references)
            vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename)
            vim.keymap.set("n", "<space>F", function()
                vim.lsp.buf.format { async = true }
            end)
            vim.keymap.set({ "n", "v" }, "<space> ", vim.lsp.buf.code_action, opts)
        end
    },
    --
    -- Conform (Formatters)
    -- ------------------------------------------------------------------------
    {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    python = { "black", "isort" },
                    html = { "djlint", "prettier" },
                }
            })
        end
    },
}
