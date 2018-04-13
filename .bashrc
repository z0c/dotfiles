# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Resolve DOTFILES_DIR (assuming ~/dotfiles)

if [ -d "$HOME/dotfiles" ]; then
  DOTFILES_DIR="$HOME/dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi

# Make utilities available
PATH="$DOTFILES_DIR/bin:$PATH"

# Read cache
DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"
[ -f "$DOTFILES_CACHE" ] && . "$DOTFILES_CACHE"

# Aliases
source $DOTFILES_DIR/.aliases/apps
source $DOTFILES_DIR/.aliases/bash

# Clean up
unset READLINK CURRENT_SCRIPT SCRIPT_PATH DOTFILE EXTRAFILE

# Export
export DOTFILES_DIR DOTFILES_EXTRA_DIR
