#!/urs/bin//env bash

# copied from https://github.com/justin8/dotfiles/blob/master/install

echo "Installing/updating vimplug..."
if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
	mkdir -p ~/.vim/autoload
	curl -sSLo ~/.vim/autoload/plug.vim \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "Upgrade vim plug..."
vim -esu ~/.vimrc +PlugUpgrade +qa || true
