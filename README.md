#Installation:

	* git clone https://github.com/bradleygolden/.vim.git

#Create symlinks:

	* ln -s ~/.vim/vimrc ~/.vimrc

#Switch to the `~/.vim/bundle` directory to install Vundle:

	* cd ~/.vim/bundle
	* git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Open vimrc and install plugins:

	* vim ~/.vimrc
	* :source %
	* :PluginInstall

#Allow vim to remember cursor position before last close:
	* sudo vim /etc/vim/vimrc
	* Find this line in vimrc:

		```
		Uncomment the following to have Vim jump to the last position when reopening a file
		if has("autocmd")
		au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
		endif	
		```

	* Save changes and close with :wq
	* sudo chown user:group ~/.viminfo (Where user and group are likely your username)
