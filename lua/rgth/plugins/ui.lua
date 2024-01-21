return {
    -- Colorschemes
    -- ------------------------------------------------------------------------
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    },
    --
    -- Treesitter
    -- ------------------------------------------------------------------------
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
              ensure_installed = { "python", "rust", "lua", "javascript", "typescript" },
              sync_install = false,
              auto_install = true,
              highlight = {
                enable = true,
              },
            })
        end
    },
    --
    -- Lualine
    -- ------------------------------------------------------------------------
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = false,
                    component_separators = { left = "|", right = "|"},
                    section_separators = { left = "", rigth = ""}
                }
            })
        end
    },
    --
    -- Git Signs
    -- ------------------------------------------------------------------------
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "▌" },
                    change = { text = "▌" },
                    delete = { text = "▌" },
                    topdelete = { text = "▌" },
                    changedelete = { text = "▌" },
                    untracked = { text = "▌" },
                }
            })
        end
    },
    --
    -- Vim Better Whitespaces
    -- ------------------------------------------------------------------------
    {
        "ntpeters/vim-better-whitespace",
        config = function()
            vim.g.better_whitespace_filetypes_blacklist = { "diff", "gitcommit", "unite", "qf", "help", "markdown"}
            vim.g.better_whitespace_enabled = 1
            vim.g.strip_whitespace_on_save = 1
            vim.g.strip_whitelines_at_eof = 1
            vim.api.nvim_exec([[
                autocmd VimEnter * EnableWhitespace
            ]], false)
        end
    },
}
