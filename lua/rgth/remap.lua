vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- -----------------------------------------------------------------------------
-- => Keys mapping
-- -----------------------------------------------------------------------------

-- Changing <ESC>
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- Moving around buffers
vim.keymap.set("n", ",", ":bnext<CR>", { silent = true })
vim.keymap.set("n", ".", ":bprev<CR>", { silent = true })

-- Improve up/down movement on wrapped lines (vimbits)
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Jump to the top and bottom line using K and J
vim.keymap.set("n", "J", "10j")
vim.keymap.set("n", "K", "10k")

-- Jump to start and end of line using the home row keys
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Easier split navigations with Ctrl-(h, j, k, l)
-- nnoremap <c-h> <c-w><c-h>
--- nnoremap <c-j> <c-w><c-j>
---nnoremap <c-k> <c-w><c-k>
-- nnoremap <c-l> <c-w><c-l>

-- F10 cleans up the search history
-- map <f10> :let @/ = ----<cr>

-- Select all text in current buffer
vim.keymap.set("n", "<Leader>a", "ggVG")

-- Use system clipboard with C-y and C-p
vim.keymap.set({"n", "v"}, "<C-y>", "\"+y")
vim.keymap.set({"n", "v"}, "<C-p>", "\"+gP")
