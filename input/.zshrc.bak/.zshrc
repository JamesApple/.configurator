source ~/.zplug/init.zsh
export TERM="xterm-256color"

zplug "b4b4r07/enhancd", use:init.sh
# zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# if ! zplug check --verbose; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     fi
# fi
zplug load  #--verbose

if zplug check zsh-users/zsh-completions; then
  autoload -U compinit && compinit
fi

if zplug check zsh-users/zsh-autosuggestions; then
    ZSH_AUTOSUGGEST_USE_ASYNC=true
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'
    ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down)
    ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}")
fi


if zplug check zsh-users/zsh-history-substring-search; then
  bindkey '\eOA' history-substring-search-up # or ^[OA
  bindkey '\eOB' history-substring-search-down # or ^[OB
fi



autoload -Uz run-help
unalias run-help
alias help=run-help


setopt autocd                   # Allow changing directories without `cd`
setopt cdablevars               # Expand expressions passed to `cd`
setopt alwaystoend
unsetopt listbeep
