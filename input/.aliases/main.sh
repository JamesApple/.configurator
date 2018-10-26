# `vim .` is seared into my mind
export VISUAL=nvim
export EDITOR=nvim
alias e="$EDITOR"
alias vim="$EDITOR"
alias vi="$EDITOR"

alias onport='lsof -wni tcp:3000'

# Misc
alias c='clear'

# Other git aliases are in gitconfig
alias g='git'

# Bundler Aliases
alias b='bundle'
alias be='b exec'
alias ber='be rails'
alias bu='bundle update'
alias bi='bundle install'

# Always use pry
alias irb="pry"

# Docker Aliases
alias d='docker'
alias dc='docker-compose'

# Coreutils overridden
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
alias timeout='gtimeout'

# Override default commands for easy life
alias grep='() { $(whence -p grep) --color=auto $@ }'
alias cp='nocorrect cp -i'
alias o='open'
alias rm='nocorrect rm -i'
alias get='curl --continue-at - --location --progress-bar --remote-name'
alias mkdir='nocorrect mkdir -p'
alias mv='nocorrect mv -i'



if [ -n "$ZSH_VERSION" ]; then
  # Suffix aliases. 
  alias -s html=vim
  alias -s js=vim
  alias -s md=vim
  alias -s rb=vim

  # Clever globals (EG: `ls G filenames`)
  alias -g X='| xargs'
  alias -g X%='| xargs -I %'
  alias -g G='| grep --color'

  flow-watch () {
    yarn flow status;
    fswatch -e '!(.*\.js)' -o app/javascript | xargs -n1 -I{} yarn flow status;
  }
fi
