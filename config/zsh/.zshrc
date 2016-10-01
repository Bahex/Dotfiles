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

if [[ "$TERM" = "linux" || "$TERM" = "screen" ]];then
	prompt grml
else
	precmd() {
		export PROMPT="$($ZDOTDIR/powerline-zsh.py $?)"
	}
fi

# Aliases
alias irssi='/usr/bin/irssi --home=~/.config/irssi --config=~/.config/irssi/config $@'
alias tmux='/usr/bin/tmux -f $HOME/.config/tmux/tmux.conf'

# Preferences
tabs 4
