#creating a path for us
if [ -f ~/.bashrc ]
    then
         . ~/.bashrc
fi


export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias la='ls -GFha'
alias ll='ls -GFhal'


source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
GITPS1='$(__git_ps1 "(git:%s)")'
#PS1="\[\u@${BOLD}${RED}\]\h:\w\[${RESET}${YELLOW}\] ${GITPS1} \[${RESET}\]\n$ "
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]> "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] ${GITPS1}\n> "
