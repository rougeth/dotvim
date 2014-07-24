# dotvim

My **VIm** configuration files.

## Plugins

* [Vundle.vim](https://github.com/gmarik/Vundle.vim)
* [Ctrlp](https://github.com/kien/ctrlp.vim)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [Airline](https://github.com/bling/vim-airline)
* [GitGutter](https://github.com/airblade/vim-gitgutter)
* [Emmet](https://github.com/mattn/emmet-vim)
* [DelimitMate](https://github.com/Raimondi/delimitMate)
* [SuperTab](https://github.com/ervandew/supertab)
* [TComment](https://github.com/tomtom/tcomment_vim)
* [Gundo](https://github.com/sjl/gundo.vim)
* [Syntastic](https://github.com/scrooloose/syntastic)
* [Colorschemes](https://github.com/flazz/vim-colorschemes)


## Installation

1. Clone the repository:

	`$ git clone https://github.com/rougeth/dotvim.git ~/.vim && cd ~/.vim`

2. Initialize and update Vundle.vim submodule:

	```
	$ git submodule init
	$ git submodule update
	```
	
3. Link **vimrc**: 

	`$ ln -s ~/.vim/vimrc ~/.vimrc`

4. Install all plugins:

	`$ vim +PluginInstall +qall`
	

To make [vim-airline](https://github.com/bling/vim-airline/) integration with [Powerline](https://github.com/Lokaltog/powerline)'s fonts work, you need to install one of the fonts in [powerline-fonts](https://github.com/Lokaltog/powerline-fonts) repository (following their instructions to install) and then adapt *vimrc* to support the font you choose.
