[[ $- != *i* ]] && return

# The following lines were added by compinstall
zstyle :compinstall filename '/home/ben/.zshrc'

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

autoload -U compinit
compinit
bindkey -v
setopt PROMPT_SUBST
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
# End of lines configured by zsh-newuser-install

##PROMPT

precmd () {
	PS1=$'┌─\e[01;32m%n\e[01;31m::\e[01;32m%m\u\n\e[m└[\e[01;32mins\e[m]─╼ '
}

function set-prompt () {
  case $KEYMAP in
	  vicmd) 		VI_MODE="cmd";;
	  viins|main) 	VI_MODE="ins";;
  esac
  PS1=$'┌─\e[01;32m%n\e[01;31m::\e[01;32m%m\e[01;37m %1~\u\n\e[m└[\e[01;32m$VI_MODE\e[m]─╼ '
}

function zle-line-init zle-keymap-select {
    set-prompt
    zle reset-prompt
}
preexec () { print -rn -- $terminfo[el]; }

zle -N zle-line-init
zle -N zle-keymap-select

##ALIASES###

#wrappers
alias ls='ls --color=auto'
alias emerge='emerge -a'
alias scrt='scrot -e 'mv $f /home/ben/screenshots''
alias sftc='neofetch --config /home/ben/.config/neofetch/small.conf'

#shortcut
alias v='vim'
alias sv='sudo vim'
alias n='ncmpcpp'
alias fb='fb-messenger-cli'

#oneliners
alias nuke='sudo rm -r'
alias sync='sudo emerge --sync'
alias upgrade='sudo emerge -uvaqDN --keep-going --with-bdeps=y @world'
alias depclean='sudo emerge -av --depclean'
alias newuse='sudo emerge -a --update --newuse --deep @world'
alias changeduse='sudo emerge -a --update --changed-use --deep @world'

#ssh
alias sobek='ssh administrator@sobek.ddns.net'
alias geb='ssh geb.sytes.net'

#configs
alias cz='vim ~/.zshrc'
alias ci3='vim ~/.config/i3/config'
alias cpol='vim ~/.config/polybar/config'
alias cv='vim ~/.vimrc'

