
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
alias bergmo='berg model'
alias bergco='berg controller'
alias bergmi='berg migration'
alias bergvi='berg view'
alias bergre='berg resource'
alias bergsc='berg scaffold'
alias bert='ber test'

alias berc='ber console'
alias bers='ber server'
alias berr='ber routes'

alias berdd='ber db:drop'
alias berdm='ber db:migrate'
alias berdms='ber db:migrate:status'
alias berdr='ber db:rollback'
alias berdseed='ber db:seed'
alias berds='ber db:setup'
alias berdsd='ber db:schema:dump'
alias berdnuke='berdd; berdsd; berdm'
alias berdreset='berdnuke; berdseed'

alias bere2h='ber haml:erb2haml'

# Jekyll
alias bej='be jekyll'
alias bejs='bej serve'
alias bejb='bej build'

# SASS
alias s='sass'
alias sw='sass --watch'

# Docker Aliases
alias d='docker'
alias dc='docker-compose'

# Unix Commands
alias t="tree"
alias ls="gls --color=auto"
alias ls='() { $(whence -p gls) -FhX --group-directories-first --color=auto $@ }'
alias la='ls -A'
alias ll='ls -l'
alias tf='tail -f'
alias -g G='| grep --color'
alias grep='() { $(whence -p grep) --color=auto $@ }'
alias egrep='() { $(whence -p egrep) --color=auto $@ }'

# Ruby
alias irb="pry"

# Vim
alias v='f -e vim'

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
