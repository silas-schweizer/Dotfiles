#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}



#starting utility applications at boot time
run nm-applet &
run pamac-tray &
numlockx on &
blueman-applet &
flameshot & 
picom --config .config/picom/picom-blur.conf --experimental-backends &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
feh --randomize --bg-fill /usr/share/wallpapers/garuda-wallpapers/* &
#starting user applications at boot time
run volumeicon &
setxkbmap -option caps:swapescape &
espanso daemon &
copyq &
sxhkd &
ulauncher --hide-window &
gummy start &
#nitrogen --random --set-zoom-fill &

