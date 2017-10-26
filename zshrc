# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# do private oxbot stuff here
# Note. make sure to ln -s PATH_TO_FILE  ~/.zshrc_oxbotica
source $HOME/.zshrc_oxbotica

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# aliases
#
# Use macvim as default
#alias vim="/usr/local/bin/mvim"

# zsh
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias kernel3='source ~/py3_kernel/bin/activate'

# The next line updates PATH for the Google Cloud SDK.
#source "$HOME/google-cloud-sdk/path.zsh.inc"
# The next line enables shell command completion for gcloud.
#source "$HOME/google-cloud-sdk/completion.zsh.inc"

# Add environment variable for Boost
export BOOST_VERSION=1.60.0
export BOOST_ROOT=/usr/local/Cellar/boost/$BOOST_VERSION

# Add cuda environment details
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add environment variable for Google Test Framework
export GTEST_ROOT="${HOME}/code/aziaami/gtest"
export GTEST_DIR="${GTEST_ROOT}/src/googletest"
export GMOCK_DIR="${GTEST_ROOT}/src/googlemock"

# Shrink video files using ffmpeg
# Usage: movie_shrink full_original_name new_name_no_extension
movie_shrink () {
  ffmpeg -i "$1" -c:v libx264 -crf 33 -b:v 1M -c:a aac -strict -2 "$2".mp4
}

# Reduce the resoultion of an image using imagemagick
# Usage: reduce_res original_image_path  new_image_path
reduce_res () {
  convert -density 300 -units PixelsPerInch $1 -resample 72 $2  
}
