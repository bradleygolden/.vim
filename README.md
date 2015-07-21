###Installation:
	* If you already have vim:
		* cd ~/ && mv .vim vim.bak (Backs up your current vim settings to vim.bak)
		* cd ~/ && mv .vimrc vim.bak/ (Backs up your vim configuration)
	
	* If you don't have vim
		* cd ~/ && git clone https://github.com/bradleygolden/.vim.git
		

###Create symlinks:

	* ln -s ~/.vim/vimrc ~/.vimrc

###Switch to the `~/.vim/bundle` directory to install Vundle:

	* cd ~/.vim/bundle
	* git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

###Open vimrc and install plugins:

	* vim ~/.vimrc
	* :source %
	* :PluginInstall

###Allow vim to remember cursor position before last close:
	* sudo vim /etc/vim/vimrc
	* Find this line in vimrc and uncomment the entire if statement:

		Uncomment the following to have Vim jump to the last position when reopening a file
		if has("autocmd")
			au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
			\| exe "normal! g'\"" | endif
		endif	

	* Save changes and close with :wq
	* sudo chown user:group ~/.viminfo (Where user and group are likely your username)

###Useful commands to know:
	* Ctrl-N: Toggles a sidebar file tree 
	* Tab: Allows for auto completion using supertab

###List of plugins used:
	* Coming soon...
###Where do I find more plugins or change the current ones?
	* http://vimawesome.com
