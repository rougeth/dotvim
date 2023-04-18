call plug#begin()

" Themes =====================================================================
Plug 'dracula/vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" UI =========================================================================
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'scrooloose/nerdtree'

" Utility ====================================================================
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'nvim-lua/plenary.nvim' " Required by Telescope
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Languages ==================================================================
" Git
Plug 'airblade/vim-gitgutter'
" Python
Plug 'fannheyward/coc-pyright'
Plug 'hdima/python-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Javascript
Plug 'isruslan/vim-es6'
Plug 'justinj/vim-jsx'
Plug 'pangloss/vim-javascript'
" HTML
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'mattn/emmet-vim'
" Markdown
Plug 'tpope/vim-markdown'

" Others
Plug 'junegunn/goyo.vim'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()
