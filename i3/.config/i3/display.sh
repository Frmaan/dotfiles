#!/bin/sh

EXT_MON="HDMI-1"

check_mon() {
    xrandr | grep "$EXT_MON connected" > /dev/null
}

set_mon() {
    xrandr --output "$EXT_MON" --auto --right-of eDP-1
}

set_auto() {
    xrandr --auto
}

if check_mon;then
    set_mon
else
    set_auto
fi


