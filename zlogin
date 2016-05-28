if [[ -z $DISPLAY && "$TERM" == "linux" && $XDG_VTNR -eq 1 ]]; then startx &> /dev/null; fi
