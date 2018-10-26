PS1=''
NEWLINE=$'%1(l.\n.)'
BLOCK_CURSOR="\033[2 q"
LINE_CURSOR="\033[6 q"
ROOT_INDICATOR='%(!.@root.)'
zle -N zle-line-init
zle -N zle-keymap-select
bindkey -v

# -- Helpers --
function optionally-render-segment-by-count () {
  pattern=$1
  icon=$2
  source_text=$3
  color_fn=$4
  if [ -n $source_text ]; then
    count="$(echo $source_text | rg $pattern | wc -l | tr -d '[:space:]')"
    if [ $count -ge 1 ]; then
      print " | $("$color_fn" "$icon " )$count"
    fi
  fi
}

function set-cursor-to-command () { printf $BLOCK_CURSOR  }
function set-cursor-to-insert () { printf $LINE_CURSOR  }
function red () { print '%F{red}'"$1"'%f' }
function blue () { print '%F{blue}'"$1"'%f' }
function green () { print '%F{green}'"$1"'%f' }
function cyan () { print '%F{cyan}'"$1"'%f' }
function magenta () { print '%F{magenta}'"$1"'%f' }
function yellow () { print '%F{yellow}'"$1"'%f' }
function update-git-command () {
  branch="$( git rev-parse --abbrev-ref HEAD 2&> /dev/null )"
  if [ $? -eq 0 ]; then
    latest_git_status="$(git status --porcelain=v2 --branch)"
    git_branch_indicator="$(yellow "$branch") "
    git_deleted_files="$(optionally-render-segment-by-count '^[0-9]+ \.D' '' "$latest_git_status" 'blue' )"
    git_modified_files="$(optionally-render-segment-by-count '^[0-9]+ \.M' '' "$latest_git_status" 'blue')"
    git_staged_changes="$(optionally-render-segment-by-count '^[0-9]+ [A-Z]\.' '' "$latest_git_status" 'green')"
    git_untracked_changes="$(optionally-render-segment-by-count '^\? ' '' "$latest_git_status" 'blue')"
    git_changes="$(echo $latest_git_status | rg '# branch\.ab' | sed 's_# branch\.ab __')"
    print "$git_branch_indicator$git_changes$git_deleted_files$git_modified_files$git_untracked_changes$git_staged_changes"
  else
    print "$(magenta 'none')"
  fi
}
FAILURE_INDICATOR='%(?..'"$(red '> ')"')'

# -- Events --
function command-entered () {
  VI_MODE_TITLE="$(green 'Normal')"
  set-cursor-to-command
  set-prompt
}

function insert-entered () {
  VI_MODE_TITLE="$(blue 'Insert')"
  set-cursor-to-insert
  set-prompt
}

function set-prompt () {
  PS1="%B$FAILURE_INDICATOR$VI_MODE_TITLE $CURRENT_PATH$( red "$ROOT_INDICATOR" )$( echo ':' )$GIT_SEGMENT%b $NEWLINE"
  zle reset-prompt
}

# Called BEFORE a new line prompt line is written. This will currently insert a newline before the prompt
precmd () { print '' }

# Called every time a new prompt line is written
zle-line-init () {
  GIT_SEGMENT="$(update-git-command)"
  CURRENT_PATH="$(pwd | sed 's_'"$HOME"'_'"$(blue '~')"'_')"
  insert-entered
}

# Called every time the mode changes
zle-keymap-select () {
  if [ $KEYMAP = vicmd ]; then
    command-entered
  else
    insert-entered
  fi
}
