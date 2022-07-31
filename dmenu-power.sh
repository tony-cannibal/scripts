#!/bin/bash

function powermenu {

    options="Cancel\nShutdown\nRestart\nLogout"

    selected=$(echo -e $options | dmenu -p "Power Menu" -fn "terminus-10" )

    if [[ $selected = "Shutdown" ]]; then
        systemctl poweroff

    elif [[ $selected = "Restart" ]]; then
        systemctl reboot
    
    elif [[ $selected = "Logout" ]]; then
        loginctl terminate-session ${XDG_SESSION_ID-}

    elif [[ $selected = "Cancel" ]]; then
        return
    
    fi

}

powermenu
