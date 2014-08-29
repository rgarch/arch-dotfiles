#alias
alias ls='ls --color=always -h --group-directories-first'
alias ixd='curl -n -F "f:1=<-" http://ix.io/'
alias untar='tar xvfz'
alias twitter='/home/x/twitterdirectmessage.py'
alias m='mocp'
alias chat='weechat-curses'
alias sshcni='ssh -p xxxx x@x.x.x.x'
alias temp='~/temp'
alias pomf='~/pomf'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/x/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -U promptinit
promptinit

prompt grml

autoload -U colors && colors

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export GTK_IM_MODULE=ibus
export XMODIFIERS="@im"=ibus
export QT_IM_MODULE=ibus