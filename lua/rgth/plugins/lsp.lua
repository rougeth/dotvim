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
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
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
    --
    -- Auto compleation
    -- ------------------------------------------------------------------------
    { "hrsh7th/cmp-nvim-lsp" },
    { "saadparwaiz1/cmp_luasnip" },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end

            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                }, {
                    { name = 'buffer' },
                }),
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            if #cmp.get_entries() == 1 then
                                cmp.confirm({ select = true })
                            else
                                cmp.select_next_item()
                            end
                        elseif has_words_before() then
                            cmp.complete()
                            if #cmp.get_entries() == 1 then
                                cmp.confirm({ select = true })
                            end
                        else
                            fallback()
                        end
                    end, { "i", "s"}),
                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                    ["<CR>"] = cmp.mapping({
                        i = function(fallback)
                            if cmp.visible() and cmp.get_active_entry() then
                                cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
                            else
                                fallback()
                            end
                        end,
                        s = cmp.mapping.confirm({ select = true }),
                        c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
                    }),
                }),
            })
        end
    },
}
