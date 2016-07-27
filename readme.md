# My dot files

* vimrc
* zshrc

-------

## vimrc 

To setup vim from scratch:

1. Clone Vundle (vim plugin manager):

    # make sure you have git setup as vundle uses it to install plugins
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

2. Get this great vimrc file: 
    
    # clone this repo
    git clone git@github.com:aziaami/dotfiles.git ~/code/aziaami/dotfiles
    # backup the existing .vimrc file 
    mv ~/.vimrc ~/.vimrc_OLD
    # copy over the repo vimrc
    cp ~/code/aziaami/dotfiles/vimrc ~/.vimrc

3. Install the Plugins:

    touch ~/test.file
    vim ~/test.file
    # in vim type ... 
    :PluginInstall

... this should complete successfully and you're now ready to go !

--------

## zshrc


