source ~/.zplug/init.zsh
export TERM="xterm-256color"


autoload -U promptinit; promptinit
prompt purer


zplug "zdharma/fast-syntax-highlighting"
#
# Compinit speedhack
autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
  compinit
else
  compinit -C
fi



# Cache completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache


# # Defer loading of NVM
# alias load_nvm='export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'
# alias node='unalias node npm && load_nvm && node'
# alias npm='unalias node npm && load_nvm && npm'


# # Defer loading of Pyenv
# alias load_pyenv='eval "$(pyenv init -)"'
# alias pyenv='unalias pyenv && load_pyenv && pyenv'


# alias load_rvm='[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' 
# alias rvm='unalias rvm && load_rvm && rvm'
