###Installation:

	* Backup vim first
		$ cd ~/ && mv .vim vim.bak (Backs up your current vim settings to vim.bak)
		$ cd ~/ && mv .vimrc vim.bak/ (Backs up your vim configuration)

	* Copy this repo and overwrite the existing .vim folder in your home directory
		$ cd ~/ && git clone https://github.com/bradleygolden/.vim.git
		

###Create symlinks:

	$ ln -s ~/.vim/vimrc ~/.vimrc

###Switch to the `~/.vim/bundle` directory to install Vundle:

	$ cd ~/.vim/bundle
	$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

###Open vimrc and install plugins:

	$ vim ~/.vimrc
	:source %
	:PluginInstall
	:q - to exit the bundle installation screen
	:wq - to save the .vimrc file
	
###If you're using C or C++:
	$ vim ~/.vim/c-support/templates/Templates
	Modify the Author, AuthorRef, Company, Copyright, Email, License, and Organization

###Install the Solarized Theme
	[Solarized Theme Website](http://ethanschoonover.com/solarized)
	
###Useful commands to know:
	* Ctrl-N: Toggles a sidebar file tree 
	* Tab: Allows for auto completion using supertab
	* \cc: Comment selected code (works with multiple lines)
	* \cu: Uncomment selected code

###Where do I find more plugins and themes?
	* http://vimawesome.com
