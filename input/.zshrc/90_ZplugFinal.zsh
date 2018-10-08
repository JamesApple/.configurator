# Let zplug manage itself
# zplug 'zplug/zplug', hook-build:'zplug --self-manage'
if ! zplug check; then
    zplug install
fi
zplug load # --verbose

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
set monitor
