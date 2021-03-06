#alias
alias ixd="curl -F 'f:1=<-' http://ix.io"
alias less=$PAGER
alias zless=$PAGER
alias colorscheme='~/colorscheme.sh'
alias ls='ls --color=always -h --group-directories-first'
alias ptpb='curl -F c=@- https://ptpb.pw'
alias untar='tar xvfz'
alias twitter='/home/ominous/twitterdirectmessage.py'
alias m='mocp'
alias chat='weechat-curses'
alias sshcni=''
alias temp='python2 ~/temp.py'
alias pomf='~/pomf.py'
alias ippy='~/ippy.py'
alias ipcon='~/ipcon.sh'
alias mpvyt='mpv --ytdl --ytdl-format=best'
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ominous/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -Uz promptinit
promptinit

prompt grml

autoload -U colors && colors

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#export PAGER=/usr/bin/less
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

man() {
	env LESS_TERMCAP_mb=$'\E[01;31m' \
	LESS_TERMCAP_md=$'\E[01;38;5;74m' \
	LESS_TERMCAP_me=$'\E[0m' \
	LESS_TERMCAP_se=$'\E[0m' \
	LESS_TERMCAP_so=$'\E[38;5;246m' \
	LESS_TERMCAP_ue=$'\E[0m' \
	LESS_TERMCAP_us=$'\E[04;38;5;146m' \
	man "$@"
}

#function zle-line-init () { echoti smkx }
#function zle-line-finish () { echoti rmkx }
#zle -N zle-line-init
#zle -N zle-line-finish
