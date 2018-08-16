source ~/.zplug/init.zsh
export TERM="xterm-256color"


autoload -U promptinit; promptinit
prompt purer


zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

setopt auto_cd
