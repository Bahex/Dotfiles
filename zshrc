# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit
prompt off

typeset -U path
path=(~/.local/bin $path[@])

if [ ! "$TERM" = "linux" ];then
#	source ~/Git/powerlevel9k/powerlevel9k.zsh-theme
precmd() {
	export PROMPT="$(~/code/python/powerline-zsh.py $?)"
}
else
	prompt grml
fi
