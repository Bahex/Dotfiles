# Add $HOME/.local/bind to $PATH
typeset -U path
path=(~/.local/bin $path[@])

# Start Xorg
if [[ -z $DISPLAY && "$TERM" == "linux" && $XDG_VTNR -eq 1 ]]; then startx &> /dev/null; fi
