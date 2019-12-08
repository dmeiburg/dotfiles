# Start X at login
if status is-login
    if test -z "$DISPLAY" 
        exec startx -- -keeptty
    end
end

# Shortcuts
abbr g git
abbr gc git commit 
abbr ga git add .
abbr gp git push origin 
abbr v nvim
abbr vim nvim
abbr port ss -tulanp
abbr xi xbps-install -Sy
abbr xq	xbps-query
abbr xu xbps-install -Su

# Variables
set -x TERMINAL st
set -x VISUAL nvim
set -x READER zathura
set -x NNN_USE_EDITOR 1
set -x EDITOR nvim
set -x BROWSER firefox
set -x fish_key_bindings fish_vi_key_bindings
set -x fish_greeting ""
set -gx FZF_DEFAULT_COMMAND find .
source ~/.ssh/ssh-agent-env
