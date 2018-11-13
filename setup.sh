#!/usr/bin/env bash
# 
# Bootstrap script for setting up a new OSX machine

echo "Starting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [ ! -d ~/.vim ]; then
    echo "Creating vim folders ..."
    mkdir -p ~/.vim/.backup 
    mkdir -p ~/.vim/.swp  
    mkdir -p ~/.vim/.undo   
fi

if [ ! -d ~/.vim/.backup ]; then
    echo "Creating ~/.vim/.backup folder ..."
    mkdir ~/.vim/.backup
fi

if [ ! -d ~/.vim/.swp ]; then 
    echo "Creating ~/.vim/.swp folder ..."
    mkdir ~/.vim/.swp
fi

if [ ! -d ~/.vim/.undo ]; then
    echo "Creating ~/.vim/.undo folder ..."
    mkdir ~/.vim/.undo
fi

if [ ! -f ~/.vimrc ]; then
    echo "Copying .vimrc to ~/ ..."
    cp .vimrc ~/
fi

if [ ! -f ~/.zshenv ]; then
    echo "Copying .zshenv to ~/ ..."
    cp .zshenv ~/
fi

if test ! $(which fuck); then
    echo "Installing thefuck..."
    brew install thefuck
    echo "eval $(thefuck --alias)" >> ~/.zshrc
fi

if test ! $(which autojump); then
    echo "Installing autojump..."
    brew install autojump
    echo "[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh" >> ~/.zshrc
fi
