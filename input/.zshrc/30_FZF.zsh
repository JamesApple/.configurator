# Setup FZF defaults
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# Setup FASD
eval "$(fasd --init zsh-hook)"

export FZF_COMPLETION_TRIGGER='*'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob  "!.git/"'


# (s)earch (c)hrome
sc() {
  local cols sep
  cols=$(( COLUMNS / 3 ))
  sep='{::}'
  \cp -f ~/Library/Application\ Support/Google/Chrome/Default/History /tmp/h
  sqlite3 -separator $sep /tmp/h \
    "select substr(title, 1, $cols), url
     from urls order by last_visit_time desc" |
  awk -F $sep '{printf "%-'$cols's  \x1b[36m%s\x1b[m\n", $1, $2}' |
  fzf --ansi --multi | sed 's#.*\(https*://\)#\1#' | xargs open
}


# (J)ump
j() {
  local dir
  dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
}


# (s)earch (t)ext
st() {
  local file
  file="$(rg --column --follow --hidden --line-number --hidden --no-heading --color=always --smart-case $@  | fzf --ansi -0 -1  | awk -F: '{print $1 " +" $2}')"
  # cmd="rg --column --follow --hidden --line-number --hidden --no-heading --color=always --smart-case"
  # file=
  if [[ -n $file ]]
  then
    vim $=file
  else 
    echo 'De nada'
  fi
}


sf() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}


sd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
    -o -type d -print 2> /dev/null | fzf +m) &&
    cd "$dir"
}


tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}


gl() {
  git log --graph --color=always \
    --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
    fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
    --bind "ctrl-m:execute:
  (grep -o '[a-f0-9]\{7\}' | head -1 |
    xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
  {}
  FZF-EOF"
}
