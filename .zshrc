# The following lines were added by compinstall
zstyle :compinstall filename '/home/ben/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

#Prompt
PS1=$'\e[01;34m%1~ \e[01;30m»\e[m '

# config shortcuts
alias cz='vim ~/.zshrc'
alias ci='vim ~/.config/i3/config'
alias cb='vim ~/.config/polybar/config'
alias cv='vim ~/.vimrc'

#wrappers
alias ls='ls --color=auto'

#common program shortcuts
alias v='vim'
alias sv='sudo vim'
alias n='ncmpcpp'
alias fb='fb-messenger-cli'

#oneliners
alias geb='ssh geb.sytes.net'
alias sobek='ssh administrator@sobek.ddns.net'
alias wscan='sudo iwlist wlp3s0 scan'
alias nuke='sudo rm -r'

