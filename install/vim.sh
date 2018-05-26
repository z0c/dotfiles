#!/urs/bin//env bash

# copied from https://github.com/justin8/dotfiles/blob/master/install

if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
    echo "Installing vimplug..."
    mkdir -p ~/.vim/autoload
    curl -sSLo ~/.vim/autoload/plug.vim \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "Upgrade vim plug..."
vim -esu ~/.vim/vimrc +PlugUpgrade +qa || true

echo "Update vim plug..."
vim -esu ~/.vim/vimrc +PlugClean! +PlugUpdate +qa || true
