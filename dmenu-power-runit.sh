#!/bin/bash

function powermenu {

    options="Cancel\nShutdown\nRestart\nLogout"

    selected=$(echo -e $options | dmenu -p "Power Menu" -fn "terminus-10" )

    if [[ $selected = "Shutdown" ]]; then
        loginctl poweroff

    elif [[ $selected = "Restart" ]]; then
        loginctl reboot
    
    elif [[ $selected = "Logout" ]]; then
        name=$(whoami)
        pkill -KILL -u $name       

    elif [[ $selected = "Cancel" ]]; then
        return
    
    fi

}



powermenu
