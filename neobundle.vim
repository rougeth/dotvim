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
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'godlygeek/csapprox'
NeoBundle 'chriskempson/base16-vim'

" Interface and navigation
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'

" Utility
NeoBundle 'tpope/vim-surround'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'ervandew/supertab'
NeoBundle 'scrooloose/nerdcommenter'

" Git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

" Code Completion
NeoBundle 'Valloric/YouCompleteMe'

" Python
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'hdima/python-syntax'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'vim-scripts/django.vim'
NeoBundle 'nvie/vim-flake8'

" Javascript
NeoBundle 'elzr/vim-json'
NeoBundle 'pangloss/vim-javascript'

" HTML
NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'mattn/emmet-vim'

" Markdown
NeoBundle 'tpope/vim-markdown'

" -----------------------------------------------

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
