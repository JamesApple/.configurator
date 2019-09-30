source ~/.zplug/init.zsh
# Add `~/bin` to the `$PATH` to enable custom scripts
export PATH="$HOME/bin:$PATH";

zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

setopt auto_cd

set -g default-command /bin/zsh
set -g default-shell /bin/zsh
