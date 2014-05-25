" -----------------------------------------------------------------------------
" => Important
" -----------------------------------------------------------------------------

" Disable Vi compatibility
set nocompatible

" Enable Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vandle
Bundle 'gmarik/Vundle.vim'
" Plugins
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
"Bundle 'Lokaltog/powerline'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tcomment_vim'
Bundle 'sjl/gundo.vim'
"Bundle 'tpope/vim-surround'
"Bundle 'mattn/gist-vim'
Bundle 'scrooloose/syntastic'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'davidhalter/jedi-vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()

" Define encoding for vim
set encoding=utf-8

" -----------------------------------------------------------------------------
" => Plugins settings
" -----------------------------------------------------------------------------

" Airline
set guifont=Ubuntu\ Mono\ derivative\ Powerline:h14
let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode

" Ctrlp
nmap <c-b> :CtrlPBuffer<cr>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" -----------------------------------------------------------------------------
" => Moving around, searching and patterns
" -----------------------------------------------------------------------------

" Ignore case when using a search pattern
set ignorecase

" Override 'ignorecase' when pattern has upper case characters
set smartcase

" Open new split panes to right and bottom
set splitbelow
set splitright

" -----------------------------------------------------------------------------
" => Displaying text
" -----------------------------------------------------------------------------

" Number of lines used for the command-line
" set cmdheight=2 "Not need with Powerline

" Width of the diplay
"set columns=84

" Show the line number for each line
set number

" -----------------------------------------------------------------------------
" => Syntax, highlighting and spelling
" -----------------------------------------------------------------------------

" Enable syntax highlight
syntax on

" Enable 256 colors
set t_Co=256

" The background color brightness
set background=dark

" Set color scheme
colorscheme hybrid

" Type of file; triggers the FileType event when set
filetype plugin on
filetype indent on

" Highlight the screen line of the cursor
set cursorline

" Columns to highlight
set colorcolumn=80

" -----------------------------------------------------------------------------
" => GUI & UI
" -----------------------------------------------------------------------------

" List of flags that specify how the GUI works
set guioptions-=T
set guioptions+=e

" Set line space
set linespace=1

" -----------------------------------------------------------------------------
" => Messages and info
" -----------------------------------------------------------------------------

" Show cursor position below each window
set ruler

" Disable the bell for error messages
set noerrorbells

" Disable the visual bell
set novisualbell

" -----------------------------------------------------------------------------
" => Editing text
" -----------------------------------------------------------------------------

" Maximum number of changes that can be undone
set undolevels=1000

" Specifies what <BS>, CTROL-W, etc. can do in Insert mode
set backspace=indent,eol,start

" When inserting a bracket, briefly jump to its match
set showmatch

" -----------------------------------------------------------------------------
" => Tabs and indenting
" -----------------------------------------------------------------------------

" Number of spaces a <Tab> in the text stands for
set tabstop=4

" Number of spaces used for each step of (auto)indent
set shiftwidth=4

" A <Tab> in an indent inserts 'shiftwidth' spaces
set smarttab

" Expand <Tab> to spaces in Insert mode
set expandtab

" Automatically set the indent of a new line
set autoindent

" Do clever autoindenting
set smartindent

" -----------------------------------------------------------------------------
" => Reading and writing files
" -----------------------------------------------------------------------------

" Automatically read a file when it was modified outside of Vim
set autoread

" -----------------------------------------------------------------------------
" => Command line editing
" -----------------------------------------------------------------------------

" How many command lines are remembered
set history=100

" List of patterns to ignore files for file name completion
set wildignore=*.o,~*,*.pyc

" Command-line completion shows a list of matches
set wildmenu

" -----------------------------------------------------------------------------
" => Mapping some keys
" -----------------------------------------------------------------------------

" Improve up/down movement on wrapped lines (vimbits)
nnoremap j gj
nnoremap k gk

" Easier split navigations with Ctrl-(h, j, k, l)
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

" F10 cleans up the search history
map <f10> :let @/ = ""<cr>

" Select all text in current buffer
map <Leader>a ggVG

" Use system clipboard with C-y and C-p
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

" -----------------------------------------------------------------------------
" => Others
" -----------------------------------------------------------------------------

" This beauty remembers where you were the last time you edited the file, and
" returns to the same position. Seriously, it's awesome.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Automatically remove all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
