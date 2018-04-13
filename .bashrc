# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)
READLINK=$(which greadlink || which readlink)
CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
  SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
  DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/dotfiles" ]; then
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
source $DOTFILES_DIR/.aliases/bash

# Clean up
unset READLINK CURRENT_SCRIPT SCRIPT_PATH DOTFILE EXTRAFILE

# Export
export DOTFILES_DIR DOTFILES_EXTRA_DIR
