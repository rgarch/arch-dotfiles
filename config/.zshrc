#alias
alias ls='ls --color=always -h --group-directories-first'
alias ptpb='curl -F c=@- https://ptpb.pw'
alias untar='tar xvfz'
alias twitter='/home/ominous/twitterdirectmessage.py'
alias m='mocp'
alias chat='weechat-curses'
alias sshcni='ssh -p 6666 rg_arch@69.164.210.120'
alias temp='python2 ~/temp.py'
alias pomf='~/pomf'
alias ippy='~/ippy.py'
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
autoload -U promptinit
promptinit

prompt grml

autoload -U colors && colors

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus


