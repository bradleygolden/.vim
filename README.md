Installation:

    git clone https://github.com/bradleygolden/.vim.git

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim/bundle` directory to install Vundle:

    cd ~/.vim/bundle
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Open vimrc and install plugins:

    vim ~/.vimrc
    :source %
    :PluginInstall
