export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PYENV_ROOT=/usr/local/var/pyenv

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

alias c='clear'
alias serve='python -m SimpleHttpServer'

# Paste
alias pbc='pbcopy'
alias pbp='pbpaste'

alias cp='nocorrect cp -i'
alias o='open'
alias rm='nocorrect rm -i'
alias get='curl --continue-at - --location --progress-bar --remote-name'
alias mkdir='nocorrect mkdir -p'
alias mv='nocorrect mv -i'

alias -g G='| grep --color'
alias grep='() { $(whence -p grep) --color=auto $@ }'
alias egrep='() { $(whence -p egrep) --color=auto $@ }'


alias irb="pry"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
export BROWSER=chrome

export VISUAL=nvim
export EDITOR=nvim
alias e="$EDITOR"
alias vim="$EDITOR"
alias vi="$EDITOR"

if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
  if [ -x "$(command -v nvr)" ]; then
    alias nvim=nvr
  else
    alias nvim='echo "No nesting!"'
  fi
fi



