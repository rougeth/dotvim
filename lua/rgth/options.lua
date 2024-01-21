-- Moving around, searching and patterns
-- ----------------------------------------------------------------------------

-- Ignore case when using a search pattern
vim.opt.ignorecase = true

-- Override 'ignorecase' when pattern has upper case characters
vim.opt.smartcase = true

-- Split panes below and to the right of current pane
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 8

-- Syntax, highlighting and spelling
-- ----------------------------------------------------------------------------

-- Maximum width of text that is being inserted
vim.opt.textwidth = 79

-- Screen columns that are highlighted
vim.opt.colorcolumn = "80"

-- Show the line number relative to the line with the cursor in front of each
-- line
vim.opt.number = true
-- vim.opt.relativenumber = true

-- Highlight the text line of the cursor
vim.opt.cursorline = true

-- Tabs and indenting
-- ----------------------------------------------------------------------------

-- Number of spaces a <Tab> in the text stands for
vim.opt.tabstop = 4

-- Number of spaces used for each step of (auto)indent
vim.opt.shiftwidth = 4

-- A <Tab> in an indent inserts 'shiftwidth' spaces
vim.opt.smarttab = true

-- Expand <Tab> to spaces in Insert mode
vim.opt.expandtab = true

-- Automatically set the indent of a new line
vim.opt.autoindent = true

-- Do clever autoindenting
vim.opt.smartindent = true

-- UI
-- ----------------------------------------------------------------------------

-- Enables 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- Others
-- ----------------------------------------------------------------------------

-- If this many milliseconds nothing is typed the swap file will be
-- written to disk
vim.opt.updatetime = 100

-- This beauty remembers where you were the last time you edited the file, and
-- returns to the same position. Seriously, it's awesome.
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})
