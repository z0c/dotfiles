#!/usr/bin/env bash

# Get current dir so this can run from any location
export DOTFILES_DIR DOTFILES_CACHE DOTFILES_EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"
source "$DOTFILES_DIR/bin/dot-messages"

dot-info 'Make utils available'
PATH="$DOTFILES_DIR/bin:$PATH"

dot-info 'Make utils executable'
find "$DOTFILES_DIR/bin/" -type f -exec chmod +x {} \;

dot-info 'Update myself...'
if is-executable git -a -d "$DOTFILES_DIR/.git"; then
  git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master
fi

dot-info 'Symlinks'
ln -svf "$DOTFILES_DIR/profile/.Xresources" ~
ln -svf "$DOTFILES_DIR/profile/.asoundrc" ~
ln -svf "$DOTFILES_DIR/profile/.asoundrc.asoundconf" ~
ln -svf "$DOTFILES_DIR/profile/.bash_profile" ~
ln -svf "$DOTFILES_DIR/profile/.bashrc" ~
ln -svf "$DOTFILES_DIR/profile/.config/i3/config" ~/.config/i3/config
ln -svf "$DOTFILES_DIR/profile/.config/i3status/config" ~/.config/i3status/config
ln -svf "$DOTFILES_DIR/profile/.config/qutebrowser/config.py" ~/.config/qutebrowser/config.py
ln -svf "$DOTFILES_DIR/profile/.config/ranger/rc.conf" ~/.config/ranger/rc.conf
ln -svf "$DOTFILES_DIR/profile/.config/rofi/config" ~/.config/rofi/config
[ -d ~/.config/termite/config ] && mkdir ~/.config/termite/config
ln -svf "$DOTFILES_DIR/profile/.config/termite/config" ~/.config/termite/config
ln -svf "$DOTFILES_DIR/profile/.gitconfig" ~
ln -svf "$DOTFILES_DIR/profile/.gitignore_global" ~
ln -svf "$DOTFILES_DIR/profile/.vim/config" ~/.vim
ln -svf "$DOTFILES_DIR/profile/.vim/ftplugin" ~/.vim
ln -svf "$DOTFILES_DIR/profile/.vim/vimrc" ~/.vim
ln -svf "$DOTFILES_DIR/profile/.xinitrc" ~

dot-info 'Starting installers'
. "$DOTFILES_DIR/install/pacman.sh"
. "$DOTFILES_DIR/install/yaourt.sh"
. "$DOTFILES_DIR/install/arch-mac-fixes.sh"
. "$DOTFILES_DIR/install/vim.sh"
. "$DOTFILES_DIR/install/rvm.sh"
. "$DOTFILES_DIR/install/pip.sh"
. "$DOTFILES_DIR/install/docker.sh"

# TODO: Copy fonts
# TODO: Run tests
