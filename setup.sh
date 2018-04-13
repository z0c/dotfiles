#!/usr/bin/env bash

# Get current dir so this can run from any location
export DOTFILES_DIR DOTFILES_CACHE DOTFILES_EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"

# Make utils available
PATH="$DOTFILES_DIR/bin:$PATH"

# Make utils executable
find "$DOTFILES_DIR/bin/" -type f -exec chmod +x {} \;

# Update myself
if is-executable git -a -d "$DOTFILES_DIR/.git"; then
  git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master
fi

# Bunch of symlinks
ln -sfc "$DOTFILES_DIR/.bashrc" ~

ln -sfv "$DOTFILES_DIR/.xorg/.Xresources" ~
ln -sfv "$DOTFILES_DIR/.xorg/.xinitrc" ~
ln -sfv "$DOTFILES_DIR/.config/i3/config" ~/.config/i3/

# Installers
. "$DOTFILES_DIR/install/pacman.sh"

# TODO: Copy fonts
# TODO: Run tests
