#!/bin/bash

install_dotfile_git_repo(){
    mkdir ~/code/
    git clone https://github.com/mnoverraz/dotfiles.git ~/code/
}

install_tmux_config(){
    ln -s ~/code/dotfiles/tmux/.tmux.conf ~/.tmux.conf
}

main {}{
    # action a effectuer
}