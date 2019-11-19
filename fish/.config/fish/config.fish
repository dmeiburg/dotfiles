# Start X at login
if status is-login
    if test -z "$DISPLAY" 
        exec startx -- -keeptty
    end
end

source ~/.ssh/ssh-agent-env
