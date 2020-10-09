#!/usr/bin/env bash

# Bash features
shopt -s autocd # Allows you to cd into directory by typing the directory name

# Aliases
alias lla="ls -laGh"
alias ll="lla"
alias bashrc="code /Users/admin/.bash_profile"
alias bash_profile="code /Users/admin/.bash_profile"
alias sourcebash="source ~/.bash_profile"
alias htdocs='cd /Applications/MAMP/htdocs'
alias mamphp='/Applications/MAMP/bin/php5.3/bin/php'
source /Users/admin/.git-completion.bash
alias vimPlugUpdate="vim -c PlugUpdate"
alias paperwork='bash /Users/admin/scripts/paperwork.sh'
alias keybox="open -a /Applications/Firefox.app https://localhost:8443 && cd /Users/admin/Downloads/KeyBox && ./startKeyBox.sh"
alias music="mpsyt ls"
alias sshuttlePayerne="sshuttle @/Users/admin/code/dotfiles/sshuttle/sshuttle.conf"
alias python=/usr/local/bin/python3 #Because of python is python2

# Environnement
export EDITOR="/usr/bin/vi"
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="[\[$(tput sgr0)\]\[\033[38;5;2m\]\A\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\][\[$(tput sgr0)\]\[\033[38;5;1m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]$ \[$(tput sgr0)\]"
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND" # Save and reload the history after each command finishes
export HOMEBREW_GITHUB_API_TOKEN=9c9f141936abc305e0989db6d72cc92c89b6824c

# Git prompt
source /Users/admin/.git-prompt.sh

source /Users/admin/.bash_prompt

# Go
GOPATH="/Users/admin/go"
PATH="$PATH:$GOPATH/bin"

# Docker
#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Lang
LANG="fr_CH.UTF-8"
LC_COLLATE="fr_CH.UTF-8"
LC_ALL="fr_CH.UTF-8"

# PHP
export PATH=/Applications/MAMP/bin/php/php7.1.12/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# Recherche d'une certaine commande (control+r en fonction de ce qui est présent (ici cd)) "cd <up-arrow><up-arrow>"
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Couleur du SHELL
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Bash history
export HISTCONTROL=ignoredups:erasedups:ignorespace  # no duplicate entries
export HISTSIZE=10000                    # big big history
export HISTFILESIZE=10000                # big big history
shopt -s histappend                      # append to history, don't overwrite it

# write a history file per panes in TMUX
HISTS_DIR=$HOME/.bash_history.d
mkdir -p "${HISTS_DIR}"

if [ -n "${TMUX_PANE}" ]; then
HISTFILE="${HISTS_DIR}/bash_history_tmux_${TMUX_PANE}"
else
HISTFILE="${HISTS_DIR}/bash_history_no_tmux"
fi

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export HOMEBREW_GITHUB_API_TOKEN=9c9f141936abc305e0989db6d72cc92c89b6824c

# Homebrew bash completion
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi


# fix the problem of display
# https://apple.stackexchange.com/questions/139807/what-does-update-terminal-cwd-do-in-the-terminal-of-os-x
update_terminal_cwd() {
    # Identify the directory using a "file:" scheme URL,
    # including the host name to disambiguate local vs.
    # remote connections. Percent-escape spaces.
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' "$PWD_URL"
}
eval "$(pyenv init -)"
