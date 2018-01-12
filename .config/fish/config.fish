function fish_mode_prompt; end
function fish_user_key_bindings; end

fish_vi_key_bindings
set fish_bind_mode default
bind -M insert -m default \cl 'clear; commandline -f repaint'
bind -M default -m default \cl 'clear; commandline -f repaint'

# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/212421880/.local/share/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set -gx PATH /usr/local/bin $PATH

alias l 'ls -lah'
alias vaporize_ghosts 'sudo killall launchservicesd; sudo killall Dock'
alias vim 'nvim'

status --is-interactive; and source (rbenv init -|psub)
