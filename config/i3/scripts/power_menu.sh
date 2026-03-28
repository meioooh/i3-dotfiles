#!/bin/bash

entries="Lock\nSuspend\nLogout\nReboot\nShutdown"

selected=$(echo -e $entries | rofi -dmenu -p "Power" -lines 5 -font "IBM Plex Mono 10")

case $selected in
    "Lock")
        i3lock -c 000000 ;;
    "Suspend")
        systemctl suspend ;;
    "Logout")
        i3-msg exit ;;
    "Reboot")
        systemctl reboot ;;
    "Shutdown")
        systemctl poweroff ;;
esac

