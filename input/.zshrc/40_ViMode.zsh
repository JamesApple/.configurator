# Vi mode
zle -N zle-keymap-select
bindkey -v
zle -N zle-line-init


# --- Colors ---
# (String) => String
function red ()     { print '%F{red}'"$1"'%f'     }
function blue ()    { print '%F{blue}'"$1"'%f'    }
function green ()   { print '%F{green}'"$1"'%f'   }
function cyan ()    { print '%F{cyan}'"$1"'%f'    }
function magenta () { print '%F{magenta}'"$1"'%f' }
function yellow ()  { print '%F{yellow}'"$1"'%f'  }

# --- Helpers ---
function optionally-render-segment-by-count () {
  # SIGNATURE ---
  # Pattern needs to be able to be interpreted by RipGrep as a regular expression
  # [Regex]
  local pattern=$1     # '^[0-9]+ text'
  # Icon can be any string
  # [String]
  local icon=$2        # ''
  # Source text is searched using the pattern attribute
  # [String]
  local source_text=$3 #  '123 text to be searched'
  # Color fn is a string that refers to a function that takes a string and returns a color wrapped string
  # [FunctionRef (String) -> String]
  local color_fn=$4    # 'yellow'
  # => '| 123 '
  # --------------

  if [ -n $source_text ]; then
    local count_from_applying_regex_to_source_text="$(echo $source_text | rg $pattern | wc -l | tr -d '[:space:]')"
    if [ $count_from_applying_regex_to_source_text -ge 1 ]; then
      local colored_icon="$("$color_fn" "$icon")"
      print " | $colored_icon $count_from_applying_regex_to_source_text"
    fi
  fi
}


function update-git-command () {
  local branch="$( git rev-parse --abbrev-ref HEAD 2&> /dev/null )"
  # Check if we're not in a git repo
  if [ $? -eq 0 ]; then
    local git_branch_indicator="$(yellow "$branch") "
    # Run full status command
    local latest_git_status="$(git status --porcelain=v2 --branch)"

    # Git count segments
    local git_deleted_files="$(optionally-render-segment-by-count     '^[0-9]+ \.D' '' "$latest_git_status" 'blue' )"
    local git_modified_files="$(optionally-render-segment-by-count    '^[0-9]+ \.M' '' "$latest_git_status" 'blue')"
    local git_staged_changes="$(optionally-render-segment-by-count    '^[0-9]+ [A-Z]\.' '' "$latest_git_status" 'green')"
    local git_untracked_changes="$(optionally-render-segment-by-count '^\? ' '' "$latest_git_status" 'blue')"

    # Up/Down segment
    local git_changes="$(echo $latest_git_status | rg '# branch\.ab' | sed 's_# branch\.ab __')"
    print "$git_branch_indicator$git_changes$git_deleted_files$git_modified_files$git_untracked_changes$git_staged_changes"
  else
    print "$(magenta 'none')"
  fi
}

# Called BEFORE a new line prompt line is written. This will currently insert a newline before the prompt
precmd () { print '' }

# -- Events --
function command-entered () {
  VI_MODE_TITLE="$(green 'Normal')"
  printf "\033[2 q" # Set block cursor
  set-prompt
}

function insert-entered () {
  VI_MODE_TITLE="$(blue 'Insert')"
  printf "\033[6 q"  # Set line cursor
  set-prompt
}

function set-prompt () {
  local root_indicator='%(!.@root.)'
  local newline=$'%1(l.\n.)'
  local failure_indicator='%(?..'"$(red '> ')"')'
  PS1="%B$failure_indicator$VI_MODE_TITLE $CURRENT_PATH$( red "$root_indicator" )$( echo ':' )$GIT_SEGMENT%b $newline"
  echo 'lol'
  zle reset-prompt
}

# Called every time a new prompt line is written
zle-line-init () {
GIT_SEGMENT="$(update-git-command)"
CURRENT_PATH="$(pwd | sed 's_'"$HOME"'_'"$(blue '~')"'_')"
insert-entered
  }

  # Called every time the mode changes
  # This dispatches the previous actions
  zle-keymap-select () {
  if [ $KEYMAP = vicmd ]; then
    command-entered
  else
    insert-entered
  fi
}
