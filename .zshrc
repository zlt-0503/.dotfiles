# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git zsh-autosuggestions zsh-completions fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Git-related shortcuts
alias ga="git add ."
alias gac="git add . && cz c"
# Regular shortcuts
alias ..='cd ../'
alias ...='cd ../../'
alias ls='ls -G'
alias ~="cd ~"

# Functions
function mcd {
  mkdir $1 && cd $1;
}
function gp() {
  find . -type f -name '.DS_Store' -exec git rm {} +;
  find . -type f -name '.DS_Store' -exec rm -f {} +;
  git push
}
function cpwd {
    pwd | pbcopy;
}
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890

# Created by `pipx` on 2024-07-21 07:23:15
export PATH="$PATH:/Users/sorasuka/.local/bin"

export EDITOR='nvim'
export VISUAL='nvim'

# Load zsh-completions
if [ -f /usr/local/share/zsh-completions/zsh-completions.zsh ]; then
    . /usr/local/share/zsh-completions/zsh-completions.zsh
fi

# Load git completion
if [ -f /usr/local/share/zsh-completions/_git ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
    autoload -Uz compinit
    compinit
fi
