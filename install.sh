#!/bin/bash

install_dotfile_git_repo(){
    mkdir ~/code/
    git clone https://github.com/mnoverraz/dotfiles.git ~/code/
}

install_tmux_config(){
    ln -s ~/code/dotfiles/tmux/.tmux.conf ~/.tmux.conf
}

install_vim_config(){
    # install the plugin manager
    mkdir -p ~/.vim/autoload/
    cd ~/.vim/autoload/
    curl -O https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    ln -s ~/code/dotfiles/vim/.vimrc ~/.vimrc
}

install_youtube-dl(){
    ln -s ~/code/dotfiles/youtube-dl/youtube-dl.conf ~/.config/youtube-dl.conf
}

main(){
    # action a effectuer
}