#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#starting utility applications at boot time
run nm-applet &
numlockx on &
blueman-applet &
flameshot & 
picom --experimental-backends -b & 
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
feh --randomize --bg-fill /usr/share/wallpapers/garuda-wallpapers/* &
#starting user applications at boot time
setxkbmap -option caps:swapescape &
run volumeicon &
espanso daemon &
copyq &
sxhkd &
ulauncher --hide-window &
gammy &
/home/silas/Applications/pcloud_ddba8da18ded3ec466b4f60464b1b922 &
