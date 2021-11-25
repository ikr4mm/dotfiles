#!/bin/sh
list=$(ls /usr/bin/ | grep -m 8 -i "$1")
buf=""
for l in $list ; do
  buf="$buf (button :class \"item\" :onclick \"$l &\" \"$l\")"
done
echo "(box :orientation \"v\" :spacing 5 :class \"apps\" :halign \"center\" :valign \"center\" $buf)" > ~/.config/eww/scripts/search_items.txt

