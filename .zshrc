bindkey -e

autoload -Uz compinit
compinit
autoload -Uz colors
colors

export PATH="/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin"
export LANG=ja_JP.UTF-8
export GEM_HOME="$HOME/local/gems"
export RBENV_ROOT="/usr/local/var/rbenv"
export PATH="$GEM_HOME/bin:$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

HISTFILE=${HOME}/.zsh_history
HISTSIZE=1000
SAVEHIST=100000
PROMPT='%/%%'
PROMPT="%{${fg[green]}%}[%~]%{${reset_color}%} %# "

setopt hist_ignore_dups
setopt share_history
setopt no_beep
setopt ignore_eof
setopt auto_cd
setopt auto_pushd

alias b=brew
alias g=git
alias v=vim
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias mv='mv -i'

function peco-history-selection(){
	BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
	CURSOR=$#BUFFER
	zle reset-prompt]
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection
