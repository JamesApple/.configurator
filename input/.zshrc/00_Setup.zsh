source ~/.zplug/init.zsh
# source /usr/local/var/homebrew/linked/zplug/init.zsh

# export TERM="screen-256color"
export TERM="xterm-256color-italic"

# Add `~/bin` to the `$PATH` to enable custom scripts
export PATH="$HOME/bin:$PATH";

zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

setopt auto_cd

set -g default-command /bin/zsh
set -g default-shell /bin/zsh
