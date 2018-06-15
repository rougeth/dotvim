# dotvim

My personal **Vim** config files.

![](https://media.giphy.com/media/3oKHWlMKdXgP26BNiE/giphy.gif)


## Installation

1. Clone the repository:

	```
	$ git clone https://github.com/rougeth/dotvim.git ~/.vim && cd ~/.vim
	``` 

2. Clone vim-plug:

    ```
    $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

3. Link **vimrc**:

	```
	$ ln -s ~/.vim/vimrc ~/.vimrc
	```

4. Install all plugins:

	```
	$ vim +PlugInstall +qall
	```