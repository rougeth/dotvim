return {
    --
    -- Telescope
    -- ------------------------------------------------------------------------
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local telescope_actions = require("telescope.actions")
            local telescope_builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>f", telescope_builtin.find_files, {})
            vim.keymap.set("n", "<leader>g", telescope_builtin.live_grep , {})
            vim.keymap.set("n", "<leader>b", telescope_builtin.buffers, {})
            vim.keymap.set("n", "<C-p>", telescope_builtin.git_files, {})

            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<esc>"] = telescope_actions.close,
                        }
                    }
                },
                pickers = {
                  find_files = {
                    disable_devicons = true
                  },
                },
            })
        end
    },
    --
    -- Nerdtree
    -- ------------------------------------------------------------------------
    {
        "preservim/nerdtree",
        config = function()
            vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>")
            vim.g.NERDTreeQuitOnOpen = true
        end
    },
    --
    -- Vim Rooter (Set root to the closest .git)
    -- ------------------------------------------------------------------------
    { "airblade/vim-rooter" },
}
