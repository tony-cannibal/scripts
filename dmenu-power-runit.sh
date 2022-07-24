#!/bin/bash

function powermenu {

    options="Cancel\nShutdown\nRestart"

    selected=$(echo -e $options | dmenu -p "Power Menu" )

    if [[ $selected = "Shutdown" ]]; then
        loginctl poweroff

    elif [[ $selected = "Restart" ]]; then
        loginctl reboot

    elif [[ $selected = "Cancel" ]]; then
        return
    
    fi

}

powermenu
