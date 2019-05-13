#System
alias lla="ls -laGh"
alias ll="lla"
export EDITOR="/usr/bin/nano"
alias bashrc="code /Users/admin/.bash_profile"
alias bash_profile="code /Users/admin/.bash_profile"
alias srcbash="source ~/.bash_profile"

#Développement
alias htdocs='cd /Applications/MAMP/htdocs'
alias mamphp='/Applications/MAMP/bin/php5.3/bin/php'
source /Users/admin/.git-completion.bash

## Développement IAFBM
alias iafbm='cd /Applications/MAMP/htdocs/iafbm && git status'
alias iafbmlog='tail -f /tmp/site.log'

# Programmes
alias paperwork='bash /Users/admin/scripts/paperwork.sh'
alias keybox="open -a /Applications/Firefox.app https://localhost:8443 && cd /Users/admin/Downloads/KeyBox && ./startKeyBox.sh"
alias music="mpsyt ls"

# Git prompt
#. /Users/admin/.git-prompt.sh
#export GIT_PS1_SHOWDIRTYSTATE=1
#export PS1='\w$(__git_ps1 " (%s)")\$ '
. /Users/admin/.bash_prompt

# Go
GOPATH="/Users/admin/go"
PATH="$PATH:$GOPATH/bin"

#Docker
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Lang
LANG="fr_CH.UTF-8"
LC_COLLATE="fr_CH.UTF-8"
LC_ALL="fr_CH.UTF-8"

#PHP
export PATH=/Applications/MAMP/bin/php/php7.1.12/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# Recherche d'une certaine commande (control+r en fonction de ce qui est présent (ici cd)) "cd <up-arrow><up-arrow>"
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Couleur du SHELL
# export LESS_TERMCAP_mb=$'\e[1;32m'
# export LESS_TERMCAP_md=$'\e[1;32m'
# export LESS_TERMCAP_me=$'\e[0m'
# export LESS_TERMCAP_se=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[01;33m'
# export LESS_TERMCAP_ue=$'\e[0m'
# export LESS_TERMCAP_us=$'\e[1;4;31m'


export HOMEBREW_GITHUB_API_TOKEN=316c67696ec2ceafa84144c2f2d62fe2e88d7f94

HOMEBREW_PREFIX=$(brew --prefix)
if type brew &>/dev/null; then
  for COMPLETION in "$HOMEBREW_PREFIX"/etc/bash_completion.d/*
  do
    [[ -f $COMPLETION ]] && source "$COMPLETION"
  done
  if [[ -f ${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh ]];
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  fi
fi
