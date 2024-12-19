```
███████╗ ██████╗ ██████╗  █████╗ ███████╗██╗   ██╗██╗  ██╗ █████╗ 
██╔════╝██╔═══██╗██╔══██╗██╔══██╗██╔════╝██║   ██║██║ ██╔╝██╔══██╗
███████╗██║   ██║██████╔╝███████║███████╗██║   ██║█████╔╝ ███████║
╚════██║██║   ██║██╔══██╗██╔══██║╚════██║██║   ██║██╔═██╗ ██╔══██║
███████║╚██████╔╝██║  ██║██║  ██║███████║╚██████╔╝██║  ██╗██║  ██║
╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
```

# SorAsuka's dotfiles

Here’s an English version of a README.md file to describe how to use your dotfiles project. Feel free to adapt it to your specific needs.

## Contents

This repository includes:

- .zshrc: Configuration file for Zsh, including aliases, keybindings, and plugins.
- .tmux.conf: Tmux configuration file for optimized workflows and plugin support.
- .vimrc: Vim configuration file with my preferred plugins and shortcuts. (No longer used)

## Installation

Follow these steps to set up and use my dotfiles:

### 1. Clone the Repository

Clone this repository to your home directory:

``` bash
git clone git@github.com:zlt-0503/.dotfiles.git ~/.dotfiles
```

### 2. Create Symlinks

To use these configuration files, you need to create symbolic links to your home directory:

``` bash
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
```

### 4. Reload Your Shell

After setting up, restart your terminal or reload configurations manually:

``` Bash
source ~/.zshrc
tmux source-file ~/.tmux.conf
```