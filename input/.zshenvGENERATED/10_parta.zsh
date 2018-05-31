
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
