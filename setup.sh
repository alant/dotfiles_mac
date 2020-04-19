#!/usr/bin/env bash
#
# Bootstrap script for setting up a new OSX machine

echo "Starting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

if test ! $(which emacs); then
    echo "Installing emacs plus..."
    brew tap d12frosted/emacs-plus
    brew install emacs-plus
    brew linkapps emacs-plus
fi

if [ ! -d ~/.vim ]; then
    echo "Creating vim folders ..."
    mkdir ~/.vim
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

DATE=$(date +"%Y%m%d%H%M")

if [ ! -f ~/.vimrc ]; then
  echo "Copying .vimrc to ~/ ..."
  cp .vimrc ~/
else
  echo "Backing up .vimrc in ~/ ..."
  mv ~/.vimrc ~/.vimrc.backup.$DATE
  echo "Copying .vimrc to ~/ ..."
  cp .vimrc ~/
fi

if [ ! -f ~/.zshenv ]; then
  echo "Copying .zshenv to ~/ ..."
  cp .zshenv ~/
else
  echo "Backing up .zshenv in ~/ ..."
  mv ~/.zshenv ~/.zshenv.backup.$DATE
  echo "Copying .zshenv to ~/ ..."
  cp .zshenv ~/
fi

if [ ! -f ~/.inputrc ]; then
  echo "Copying .inputrc to ~/ ..."
  cp .inputrc ~/
else
  echo "Backing up .inputrc in ~/ ..."
  mv ~/.inputrc ~/.inputrc.backup.$DATE
  echo "Copying .inputrc to ~/ ..."
  cp .inputrc ~/
fi

if [ ! -f ~/.spacemacs ]; then
    echo "Copying .spacemacs to ~/ ..."
    cp .spacemacs ~/
else
    echo "Backing up .spacemacs in ~/ ..."
    mv ~/.spacemacs ~/.spacemacs.backup.$DATE
    echo "Copying .spacemacs to ~/ ..."
    cp .spacemacs ~/
fi
