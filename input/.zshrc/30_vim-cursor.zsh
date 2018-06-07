autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
KEYTIMEOUT=1
bindkey -v

# zle-keymap-select () {
# if [ "$TERM" = "xterm-256color" ]; then
#   if [ $KEYMAP = vicmd ]; then
#     # the command mode for vi
#     echo 'hi'
#     echo -ne "\e[2 q"
#   else
#     # the insert mode for vi
#     echo -ne "\e[4 q"
#   fi
# fi
# }


function zle-keymap-select zle-line-init {
# If it's not tmux then can use normal sequences
if [[ -z "${TMUX}" ]]; then
  local vicmd_seq="\e[2 q"
  local viins_seq="\e[0 q"
else
  # In tmux, escape sequences to pass to terminal need to be
  # surrounded in a DSC sequence and double-escaped:
  # ESC P tmux; {text} ESC \
    # <http://linsam.homelinux.com/tmux/tmuxcodes.pdf>
  local vicmd_seq="\ePtmux;\e\e[2 q\e\\"
  local viins_seq="\ePtmux;\e\e[0 q\e\\"
fi

# Command mode
if [ $KEYMAP = vicmd ]; then
  echo -ne $vicmd_seq
  # Insert mode
else
  echo -ne $viins_seq
fi
zle reset-prompt
}



# Change appearance
zle -N zle-keymap-select  # When vi mode changes
zle -N zle-line-init      # When a new line starts

# Fix backspace not working after returning from cmd mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char 

# Re-enable incremental search from emacs mode (it's useful)
bindkey '^r' history-incremental-search-backward
