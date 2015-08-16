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
NeoBundle 'godlygeek/csapprox'
NeoBundle 'sheerun/dracula-theme'

" Interface and navigation
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'

" Utility
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'tpope/vim-commentary.git'
"NeoBundle 'Townk/vim-autoclose'
"NeoBundle 'ervandew/supertab'
"NeoBundle 'scrooloose/nerdcommenter'

" Git
NeoBundle 'airblade/vim-gitgutter'

" Python
NeoBundle 'hdima/python-syntax'

" Javascript
"NeoBundle 'elzr/vim-json'
"NeoBundle 'pangloss/vim-javascript'

" HTML
"NeoBundle 'amirh/HTML-AutoCloseTag'
"NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'mattn/emmet-vim'

" Markdown
"NeoBundle 'tpope/vim-markdown'

" -----------------------------------------------

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
