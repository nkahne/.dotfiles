#!/bin/bash
ssid=$(nmcli -t -f active,ssid dev wifi | grep '^no' | cut -d: -f2 | wofi --dmenu -p "Select Wi-Fi:")
[ -n "$ssid" ] && nmcli dev wifi connect "$ssid"
