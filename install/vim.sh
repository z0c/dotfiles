#!/urs/bin//env bash

# copied from https://github.com/justin8/dotfiles/blob/master/install

if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
    dot-info "Vim instal vimplug"
    mkdir -p ~/.vim/autoload
    curl -sSLo ~/.vim/autoload/plug.vim \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

dot-info "Vim upgrade plug"
vim -esu ~/.vim/vimrc +PlugUpgrade +qa || true

dot-info "Vim clean and update plug"
vim -esu ~/.vim/vimrc +PlugClean! +PlugUpdate +qa || true
