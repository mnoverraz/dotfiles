#!/bin/bash

install_dotfile_git_repo(){
    mkdir ~/code/
    git clone https://github.com/mnoverraz/dotfiles.git ~/code/
}

install_bash_profile(){
    ln -s ~/code/dotfiles/bash/.bash_profile ~/.bash_profile
    ln -s ~/code/dotfiles/bash/.bash_prompt ~/.bash_profile
}

install_tmux_config(){
    ln -s ~/code/dotfiles/tmux/.tmux.conf ~/.tmux.conf
}

install_vim_config(){
    ln -s ~/code/dotfiles/vim/.vimrc ~/.vimrc

    # install the plugin manager
    mkdir -p ~/.vim/autoload/
    cd ~/.vim/autoload/
    curl -O https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

install_youtube-dl(){
    ln -s ~/code/dotfiles/youtube-dl/youtube-dl.conf ~/.config/youtube-dl.conf
}

main(){
    # action a effectuer
}