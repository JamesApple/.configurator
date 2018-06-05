
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PYENV_ROOT=/usr/local/var/pyenv
# =============================================================================
#                                    Aliases
# =============================================================================
alias g='git'

# Next highest folder with .git
alias tl='git rev-parse --show-toplevel'
alias timeout='gtimeout'

# Bundler Aliases
alias b='bundle'
alias be='b exec'
alias ber='be rails'
alias bu='bundle update'
alias bi='bundle install'

# Rails Aliases
alias berg='ber generate'
alias berc='ber console'
alias bers='ber server'
alias berr='ber routes'

# Docker Aliases
alias d='docker'
alias dc='docker-compose'


# LS commands
alias ls='() { $(whence -p gls) -FhX --group-directories-first --color=auto $@ }'
alias l='ls -1A'             # Show files in one column.
alias ll='ls -lh'            # Show human readable.
alias la='ls -lhA'           # Show hidden files.
alias lx='ls -lhXB'          # Sort by extension.
alias lk='ls -lhSr'          # Sort by size, biggest last.
alias lc='ls -lhtcr'         # Sort by and show change time, most recent last.
alias lu='ls -lhtur'         # Sort by and show access time, most recent last.
alias lt='ls -lhtr'          # Sort by date, most recent last.
alias lm='ls -lha | more'    # Pipe through 'more'.
alias lr='ls -lhR'           # Recursive ls.
alias sl='ls'                # I often screw this up.
alias la='ls -A'
alias ll='ls -l'

# Paste
alias pbc='pbcopy'
alias pbp='pbpaste'

alias cp='nocorrect cp -i'
alias o='open'
alias rm='nocorrect rm -i'
alias get='curl --continue-at - --location --progress-bar --remote-name'
alias mkdir='nocorrect mkdir -p'
alias mv='nocorrect mv -i'

alias tf='tail -f'
alias -g G='| grep --color'
alias grep='() { $(whence -p grep) --color=auto $@ }'
alias egrep='() { $(whence -p egrep) --color=auto $@ }'

# Ruby
alias irb="pry"

# Vim
alias v='f -e vim'



alias e="$EDITOR"
export VISUAL=nvim
export EDITOR=nvim
export BROWSER=google-chrome
# Use Nvim
alias vim=nvim
alias vi=nvim

# jump to recently used items
alias a='fasd -a' # any
alias s='fasd -si' # show / search / select
alias d='fasd -d' # directory
alias f='fasd -f' # file
alias z='fasd_cd -d' # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # interactive directory jump


if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
  if [ -x "$(command -v nvr)" ]; then
    alias nvim=nvr
  else
    alias nvim='echo "No nesting!"'
  fi
fi




# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jamesapple/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jamesapple/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jamesapple/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jamesapple/google-cloud-sdk/completion.zsh.inc'; fi


PATH="/Users/jamesapple/Library/Python/3.6/bin:${PATH}"
# PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

export PATH
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

