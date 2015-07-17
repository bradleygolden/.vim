Installation:

    1. git clone https://github.com/bradleygolden/.vim.git

Create symlinks:

    1. ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim/bundle` directory to install Vundle:

    1. cd ~/.vim/bundle
    2. git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Open vimrc and install plugins:

    1. vim ~/.vimrc
    2. :source %
    3. :PluginInstall

Allow vim to remember cursor position before last close:

	1. sudo vim /etc/vim/vimrc
	
	2. Uncomment the following to have Vim jump to the last position when reopening a file

	```
	if has("autocmd")
  		au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    		\| exe "normal! g'\"" | endif
	endif
	```
	
	3. Save changes and close with :wq

	4. sudo chown user:group ~/.viminfo (Where user and group are likely your username)
