set -gx EDITOR hx

set -gx STARSHIP_CONFIG "$XDG_CONFIG_HOME/starship/starship.toml"

# for a python script -- not sure if this is the best place for it
set -gx MONITOR_HEIGHT 850

# fzf stuff
set FZF_DEFAULT_OPTS '--bind "ctrl-y:execute-silent(string trim {} | wl-copy -n)"'
set FZF_DEFAULT_COMMAND 'fd -u'

# bat stuff
set -gx MANPAGER "sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | batcat -p -lman'"
set -gx BAT_PAGER "less -RF --mouse -q --no-vbell"
