# Let zplug manage itself
# zplug 'zplug/zplug', hook-build:'zplug --self-manage'
if ! zplug check; then
    zplug install
fi
zplug load # --verbose

set monitor
