#!/usr/bin/env bash

VPN_SERVICE=${VPN_SERVICE:-openvpn}

MSG="VPN"

# Themes copied from here: http://colorbrewer2.org/
# shellcheck disable=SC2034
PURPLE_GREEN_THEME=("#762a83" "#9970ab" "#c2a5cf" "#a6dba0" "#5aae61" "#1b7837")
# shellcheck disable=SC2034
RED_GREEN_THEME=("#d73027" "#fc8d59" "#fee08b" "#d9ef8b" "#91cf60" "#1a9850")
# shellcheck disable=SC2034
ORIGINAL_THEME=("#acacac" "#ff0101" "#cc673b" "#ce8458" "#6bbb15" "#0ed812")

# Configuration
COLORS=(${RED_GREEN_THEME[@]})
MENUFONT="" #"size=11 font=UbuntuMono-Bold"
iface=tun0

function colorize {
  ifconfig $1 > /dev/null 2>&1
  if [ $? == 0 ]; then
    echo "${COLORS[5]}"
  else
    echo "${COLORS[0]}"
  fi
}

echo "$MSG | color=$(colorize ${iface}) $MENUFONT"

echo "---"
echo "Restart VPN | bash='sudo service ${VPN_SERVICE} stop && sudo service ${VPN_SERVICE} start && exit'"
echo "Start VPN | bash='sudo service ${VPN_SERVICE} start && exit'"
echo "Stop VPN | bash='sudo service ${VPN_SERVICE} stop && exit'"
echo "View VPN Log | bash='sudo tail -f /var/log/openvpn.log'"
