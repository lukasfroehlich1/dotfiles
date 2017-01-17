#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

ln -sfv "$DOTFILES_DIR/general/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/general/.slate.js" ~
ln -sfv "$DOTFILES_DIR/general/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/vim/.ycm_extra_conf" ~

# adding monokai coloring
mkdir -p ~/.vim/colors
ln -sfv "$DOTFILES_DIR/vim/monokai.vim" ~/.vim/colors
