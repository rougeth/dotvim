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

" Number of screen lines to keep above and below the cursor. This will make
" some context visible around where you are working.
set scrolloff=5

" -----------------------------------------------------------------------------
" => Displaying text
" -----------------------------------------------------------------------------

" Number of lines used for the command-line
" set cmdheight=2 "Not need with Powerline

" Width of the diplay
"set columns=84

" Show the line number for each line
set nonumber

" -----------------------------------------------------------------------------
" => Syntax, highlighting and spelling
" -----------------------------------------------------------------------------

" Enable syntax highlight
syntax on

" Enable 256 colors
set t_Co=256
set termguicolors

" The background color brightness
set background=dark

" Set color scheme
colorscheme dracula

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

set guioptions+=lrb
set guioptions-=lrb

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
set wildignore=*.o,~*,*.pyc,bower_components,node_modules

" Command-line completion shows a list of matches
set wildmenu

" -----------------------------------------------------------------------------
" => Others
" -----------------------------------------------------------------------------

" This beauty remembers where you were the last time you edited the file, and
" returns to the same position. Seriously, it's awesome.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

autocmd FileType html setlocal shiftwidth=2 tabstop=2 colorcolumn=
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
set backupcopy=yes
