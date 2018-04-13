#!/usr/bin/env bash

# Get current dir so this can run from any location
export DOTFILES_DIR DOTFILES_CACHE DOTFILES_EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"
DOTFILES_EXTRA_DIR="$HOME/.extra"

# Update myself
if is-executable git -a -d "$DOTFILES_DIR/.git"; then
  git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master
fi

# Make utils available
PATH="$DOTFILES_DIR/bin:$PATH"

# Make utils executable
find "$DOTFILES_DIR/bin/" -type f -exec chmod +x {} \;

# TODO: Bunch of symlinks

# Installers
. "$DOTFILES_DIR/install/pacman.sh"

# TODO: Copy fonts
# TODO: Run tests
# TODO: Install extra stuff

