# My dot files

* vimrc
* zshrc
* gitconfig

These are 'dot' files (ie. hidden) that handle various application configs on my Mac. 

TODO: Create a python (or bash) script that will set me up in one go !
TODO: Test on a fresh Mac. Will it work on Linux ?
-------

## vimrc 

To setup vim (on Mac OS X Yosemite) from scratch:

*Note.* I use [YouCompleteMe](http://valloric.github.io/YouCompleteMe/#mac-os-x) for autocomplete etc. this requires the latest MacVim, so go ahead and download it [here](https://github.com/macvim-dev/macvim/releases). 

Installing MacVim:

Recommended : Use Homebrew
```bash
brew install macvim
```

Alternate method 
 - Open the .dmg file and drag the MacVim icom into your Applications folder. 
 - copy the mvim script you see to `/usr/local/bin/mvim`
 - update the mvim script by editing line 15 to this : `VIM_APP_DIR="/Applications"`
 - update the default shell script to point to mvim when executing vim from the terminal , as described [here](http://stackoverflow.com/questions/7211820/update-built-in-vim-on-mac-os-x)
 
... onto the actual Vim customisation ... 

0. Install things needed by plugins 
 - Ctrl-p plugin needs `brew install ag`

1. Clone Vundle (vim plugin manager):

    ```bash
    # make sure you have git setup as vundle uses it to install plugins
    cd ~/.vim
    mkdir bundle; cd bundle
    git clone https://github.com/VundleVim/Vundle.vim.git
    ```
    see [vundle page](https://github.com/VundleVim/Vundle.vim) for more details.

2. Get this great vimrc file: 
         
    ```bash 
    # clone this repo
    cd ~/code
    git clone git@github.com:aziaami/dotfiles.git

    # backup the existing .vimrc file
    mv ~/.vimrc ~/.vimrc_OLD
        
    # create a symlink to the vimrc file
    ln -s ~/code/dotfiles/vim/vimrc ~/.vimrc
    ```
3. Install Plugins:
    Launch `vim` and run `:PluginInstall`

    To install from command line: `vim +PluginInstall +qall`

    ... this should complete successfully and all plugins have been installed. We're almost done, we just need to ...

4. Install YouCompleteMe (YCM)

    *Note.* If you want C-family completion, you MUST have the latest Xcode installed along with the latest Command Line Tools (they are installed automatically when you run clang for the first time, or manually by running `xcode-select --install`)

    Install CMake (preferably with Homebrew). If you have installed a Homebrew Python and/or Homebrew MacVim, see the [FAQ](http://valloric.github.io/YouCompleteMe/#faq) for details.

    Compiling YCM with semantic support for C-family languages:
 
        ```bash
        cd ~/.vim/bundle/YouCompleteMe
        ./install.py --clang-completer
        ```

    That's it. You're done. Refer to the [User Guide section](http://valloric.github.io/YouCompleteMe/#user-guide) on how to use YCM. Don't forget that if you want the C-family semantic completion engine to work, you will need to provide the compilation flags for your project to YCM. It's all in the User Guide.

4.1 YCM compilation flags for GoTo 

--------

## zshrc

The `~/.zshrc` file allows for customisation of the zsh shell. Useful items include plugins for git and syntax highlighting, aliases and exporting environment variables.

To setup from scratch - follow the installation instructions here : [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) 

- [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)

--------

## gitconfig

- `~/.gitconfig` is where you set the config and settings of git.
- `~/.git-diff.sh` is referenced in the `.gitconfig` and uses a command to start any diff tool.
- `~/.gitignore_global` allows you to set which files are always ignored by git. 

Run the following commands ... 

```bash
# remember to backup your existing files if you want to keep them
ln -s ~/code/aziaami/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/code/aziaami/dotfiles/git/git-diff.sh ~/.git-diff.sh
ln -s ~/code/aziaami/dotfiles/git/gitignore_global ~/.gitignore_global
```

Note. if it appears like gitignore isn't working (i.e. `git diff` is showing files that should be ignored it's because you have to remove all tracked files and add them back in. See [here](http://blog.jonathanchannon.com/2012/11/18/gitignore-not-working-fixed/) for solution.

--------
