# My dot files

* vimrc
* zshrc

-------

## vimrc 

To setup vim (on Mac OS X Yosemite) from scratch:

*Note.* I use [YouCompleteMe](http://valloric.github.io/YouCompleteMe/#mac-os-x) for autocomplete etc. this requires the latest MacVim, so go ahead and download it [here](https://github.com/macvim-dev/macvim/releases). 

Installing MacVim:
 - Open the .dmg file and drag the MacVim icom into your Applications folder. 
 - copy the mvim script you see to `/usr/local/bin/mvim`
 - update the mvim script by editing line 15 to this : `VIM_APP_DIR="/Applications"`
 - update the default shell script to point to mvim when executing vim from the terminal , as described [here](http://stackoverflow.com/questions/7211820/update-built-in-vim-on-mac-os-x)
 
... onto the actual Vim customisation ... 

1. Clone Vundle (vim plugin manager):

    ```bash
    # make sure you have git setup as vundle uses it to install plugins
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```
    see [vundle page](https://github.com/VundleVim/Vundle.vim) for more details.


2. Get this great vimrc file: 
         
    ```bash 
    # clone this repo
    git clone git@github.com:aziaami/dotfiles.git ~/code/aziaami/dotfiles

    # backup the existing .vimrc file
    mv ~/.vimrc ~/.vimrc_OLD
        
    # copy over the repo vimrc
    cp ~/code/aziaami/dotfiles/vimrc ~/.vimrc
    ```

3. Install Plugins:

    Launch `vim` and run `:PluginInstall`

    To install from command line: `vim +PluginInstall +qall`

    ... this should complete successfully and all plugins have been installed. We're almost done, we just need to ...


4. Install YouCompleteMe (YCM)

    *Note.* If you want C-family completion, you MUST have the latest Xcode installed along with the latest Command Line Tools (they are installed automatically when you run clang for the first time, or manually by running xcode-select --install)

    Install CMake (preferably with Homebrew). If you have installed a Homebrew Python and/or Homebrew MacVim, see the [FAQ](http://valloric.github.io/YouCompleteMe/#faq) for details.

    Compiling YCM with semantic support for C-family languages:
    
        ```bash
        cd ~/.vim/bundle/YouCompleteMe
        ./install.py --clang-completer
        ```

    That's it. You're done. Refer to the [User Guide section](http://valloric.github.io/YouCompleteMe/#user-guide) on how to use YCM. Don't forget that if you want the C-family semantic completion engine to work, you will need to provide the compilation flags for your project to YCM. It's all in the User Guide.

--------

## zshrc

--------

- [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)
