dotfiles
========

Dot files configs to keep them together and around easy to put in a new computer and share them with the world!!

Currently, I'm using Mac most of them should work with Linux too.

Some of the uses as Vundle with Vim you'll need to install it first, or bash-completion too.

Have fun!!


# Setting up bash
1. `brew install git bash-completion`
2. Copy `.bashrc`, `.bash_prompt`, `.bash_profile`, `.aliases`, `.exports`

# How to reload profile
Run `profile` from your terminal

# Setting up Vim
1. `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
2. Copy `.vimrc` to `home`
2. `vim +PluginInstall +qall`

# Setting up `pyenv` and `pyenv-virtualenv`
0. Install [brew](https://brew.sh/)
1. `brew install pyenv`
2. `brew install pyenv-virtualenv`
3. Install some python version `pyenv install 3.5.4`

