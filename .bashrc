# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export PAGER=less

#Prompt
#PS1=$'\e[01;33m\u\e[01;31m@\e[01;33m\h \W\e[01;35m $\e[m '
PS1=' \W $ '

# User specific aliases and functions
alias cs='vim ~/.bashrc'
alias cv='vim ~/.vimrc'
alias ls='ls --color=auto'
alias v='vim'
alias sv='sudo vim'
alias nuke='sudo rm -r'
alias cycle='ssh -X -l bkuehner cycle2.csug.rochester.edu'
