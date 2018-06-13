source ~/.zplug/init.zsh

zplug "b4b4r07/enhancd", use:init.sh
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
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



## =============================================================================
##                                   Zplugins
## =============================================================================
## https://github.com/zplug/zplug
## to enable fzy search

## zplug "plugins/git", from:oh-my-zsh
#zplug "plugins/command-not-found", from:oh-my-zsh
#zplug "plugins/colored-man-pages", from:oh-my-zsh
#zplug "plugins/colorize", from:oh-my-zsh
## zplug "plugins/docker", from:oh-my-zsh
#zplug "zsh-users/zsh-history-substring-search"
#zplug "b4b4r07/enhancd", use:init.sh
#zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
#zplug "plugins/vi-mode", from:oh-my-zsh
#zplug "plugins/dircycle", from:oh-my-zsh
#zplug "seebi/dircolors-solarized", ignore:"*", as:plugin



## =============================================================================
##                                   Options
## =============================================================================
# extendedglob
# interactive
# kshglob
# login
# monitor
# nonomatch
# shinstdin
#setopt append_history           # Dont overwrite history
#setopt extended_history         # Also record time and duration of commands.
#setopt share_history            # Share history between multiple shells
#setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
#setopt hist_find_no_dups        # Dont display duplicates during searches.
#setopt hist_ignore_dups         # Ignore consecutive duplicates.
#setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
#setopt hist_reduce_blanks       # Remove superfluous blanks.
#setopt hist_save_no_dups        # Omit older commands in favor of newer ones.
##setopt auto_pushd
#setopt pushd_ignore_dups        # Dont push copies of the same dir on stack.
#setopt pushd_minus              # Reference stack entries with "-".
#setopt extended_glob
#ENHANCD_DOT_ARG='...'
#ENHANCD_FILTER=fzy
#ENHANCD_HOOK_AFTER_CD='ls'
#export ENHANCD_FILTER 
#export ENHANCD_DOT_ARG
#export ENHANCD_HOOK_AFTER_CD

## =============================================================================
##                                   Zstyle
## =============================================================================

#zstyle ':completion:*' rehash true
##zstyle ':completion:*' verbose yes
##zstyle ':completion:*:descriptions' format '%B%d%b'
##zstyle ':completion:*:messages' format '%d'
##zstyle ':completion:*:warnings' format 'No matches for: %d'
##zstyle ':completion:*' group-name ''
## case-insensitive (all), partial-word and then substring completion
#zstyle ":completion:*" matcher-list \
#  "m:{a-zA-Z}={A-Za-z}" \
#  "r:|[._-]=* r:|=*" \
#  "l:|=* r:|=*"
#zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS}


## =============================================================================
##                             Powerlevel9k Customization
## =============================================================================
## =============================================================================
##                                    Functions
## =============================================================================

#export KEYTIMEOUT=1

#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
#eval `gdircolors ~/.dir_colors`


## =============================================================================
##                             Final Initiations
## =============================================================================

## Fasd
##
## only init if installed.
#fasd_cache="$HOME/.fasd-init-bash"
#if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
#  eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install)" >| "$fasd_cache"
#fi
#source "$fasd_cache"
#unset fasd_cache


## Install Plugins
#if ! zplug check --verbose; then
#  printf "Install? [y/N]: "
#  if read -q; then
#    echo; zplug install
#  fi
#fi

## Then, source plugins and add commands to $PATH
#zplug load # --verbose



## Syntax Highlighting
#if zplug check "zsh-users/zsh-syntax-highlighting"; then
#  #ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'
#  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
#  ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')
#  typeset -A ZSH_HIGHLIGHT_STYLES
#  ZSH_HIGHLIGHT_STYLES[cursor]='bg=yellow'
#  ZSH_HIGHLIGHT_STYLES[globbing]='none'
#  ZSH_HIGHLIGHT_STYLES[path]='fg=white'
#  ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=grey'
#  ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan'
#  ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan'
#  ZSH_HIGHLIGHT_STYLES[function]='fg=cyan'
#  ZSH_HIGHLIGHT_STYLES[command]='fg=green'
#  ZSH_HIGHLIGHT_STYLES[precommand]='fg=green'
#  ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green'
#  ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=yellow'
#  ZSH_HIGHLIGHT_STYLES[redirection]='fg=magenta'
#  ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=cyan,bold'
#  ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=green,bold'
#  ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=magenta,bold'
#  ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=yellow,bold'
#fi

## History Search
#if zplug check "zsh-users/zsh-history-substring-search"; then
#  zmodload zsh/terminfo
#  bindkey "$terminfo[kcuu1]" history-substring-search-up
#  bindkey "$terminfo[kcud1]" history-substring-search-down
#  bindkey "^[[1;5A" history-substring-search-up
#  bindkey "^[[1;5B" history-substring-search-down
#fi


## Cheeky unorganized thing
