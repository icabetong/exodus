#!/bin/bash

theme='https://github.com/dracula/gtk/archive/master.zip'
temp='/tmp/dracula.zip'
 
wget -O $temp $theme

dest="$HOME/.themes/"
unzip $temp -d $dest
mv "$HOME/.themes/gtk-master" "$HOME/.themes/Dracula"

sleep 1
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

exit
