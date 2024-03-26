# Vim 

* vimrc and vim setup
* Plugins
  * Vundle
  * YouCompleteMe
  * YCM-Generator

## vimrc and vim setup 

## Plugins

(Also, see `vimrc` file for notes of plugins). 

### Vundle

See GitHub for documentation: https://github.com/VundleVim/Vundle.vim

[Vundle] is short for _Vim bundle_ and is a [Vim] plugin manager.

### YouCompleteMe 

See GitHub for documentation: https://github.com/Valloric/YouCompleteMe

direct from documentation (on 26/10/2017):

**Remember:** YCM is a plugin with a compiled component. If you **update** YCM
using Vundle and the ycm_core library APIs have changed (happens
rarely), YCM will notify you to recompile it. You should then rerun the install
process.

**NOTE:** If you want C-family completion, you MUST have the latest Xcode
installed along with the latest Command Line Tools (they are installed
automatically when you run `clang` for the first time, or manually by running
`xcode-select --install`)

Install CMake. Preferably with [Homebrew][brew], but here's the [stand-alone
CMake installer][cmake-download].

_If_ you have installed a Homebrew Python and/or Homebrew MacVim, see the _FAQ_
for details.

Compiling YCM **with** semantic support for C-family languages:

    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer

### YCM Generator

* generate a `.ycm_extra_conf.py` file for use with [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

    cd ~/.vim/bundle/YCM-Generator
    ./config_gen.py PROJECT_DIRECTORY

where `PROJECT_DIRECTORY` is the root directory of your project's build system (i.e. the one containing the root Makefile, etc.)

You can also invoke it from within Vim using the `:YcmGenerateConfig` or `:CCGenerateConfig` commands to generate a config file for the current directory.

**Remember:** the .ycm_extra_conf.py file is a **hidden** file.
