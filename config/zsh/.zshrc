# Lines configured by zsh-newuser-install
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

fpath=($ZDOTDIR/completion $fpath)

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit
prompt off

if [ ! "$TERM" = "linux" ];then
	precmd() {
		export PROMPT="$($ZDOTDIR/powerline-zsh.py $?)"
	}
else
	prompt grml
fi

# Aliases
alias irssi='/usr/bin/irssi --home=~/.config/irssi --config=~/.config/irssi/config $@'

# Preferences
tabs 4
