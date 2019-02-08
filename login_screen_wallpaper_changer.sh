#!/bin/bash
echo "Enter the absolue path of file";
read  path_name;
ls $path_name;
echo "Select a file and Enter the file name, Make sure it is of png format";
read file_name;
path1="$path_name/$file_name";
path2="/usr/share/backgrounds";
cp $path1 $path2;
echo "files copied";
num=`awk '/lockDialogGroup/{print NR}' /usr/share/gnome-shell/theme/gdm3.css`;
num=$((num+1));
sed -i "$num s&.*&background: #2c001e url(file:///usr/share/backgrounds/$file_name);&" /usr/share/gnome-shell/theme/gdm3.css;
echo "wallpaper changed please reboot your system for changes to take effect";

