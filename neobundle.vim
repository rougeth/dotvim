" -----------------------------------------------------------------------------
" => NeoBundle configuration and plugin registration
" -----------------------------------------------------------------------------

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" -----------------------------------------------

" Let NeoBundle manage NeoBundle

" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Visual
NeoBundle 'rougeth/papercolor-theme'
NeoBundle 'dracula/vim'

" Interface and navigation
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" Utility
NeoBundle 'mileszs/ack.vim'
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'tpope/vim-commentary.git'
"NeoBundle 'Townk/vim-autoclose'
"NeoBundle 'ervandew/supertab'
"NeoBundle 'scrooloose/nerdcommenter'

" Git
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'

" Python
NeoBundle 'hdima/python-syntax'

" Javascript
"NeoBundle 'elzr/vim-json'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'justinj/vim-jsx'
NeoBundle 'isruslan/vim-es6'

" HTML
"NeoBundle 'amirh/HTML-AutoCloseTag'
"NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'JulesWang/css.vim'
NeoBundle 'cakebaker/scss-syntax.vim'

" Markdown
"NeoBundle 'tpope/vim-markdown'

" Others
NeoBundle 'junegunn/goyo.vim'

" -----------------------------------------------

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
