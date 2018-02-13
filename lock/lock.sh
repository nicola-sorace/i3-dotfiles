#!/bin/bash

cd "/home/nicola/.config/i3/lock"

import -silent -window root lock.png;
notify-send --urgency low "Locking..."
#convert lock.png -scale 25% -blur 0x2 -scale 400% lock.png;
convert lock.png -scale 10% -scale 1000% lock.png;
composite -gravity center pad.png lock.png lock.png;

#i3lock -i lock.png --indpos="w/2:h/2-25" --textcolor=eee8d5ff --ringcolor=07364295 --keyhlcolor=268bd295 --bshlcolor=dc322f95 --insidecolor=002b3695 --insidevercolor=268bd295 --ringvercolor=268bd295 --insidewrongcolor=dc322f95 --ringwrongcolor=dc322f95 --linecolor=07364295 --separatorcolor=07364295;

i3lock -i lock.png --indpos="w/2:h/2-25" --radius=100 --textcolor=eee8d5ff --ringcolor=07364295 --keyhlcolor=268bd295 --bshlcolor=dc322f95 --insidecolor=002b3600 --insidevercolor=268bd250 --ringvercolor=268bd295 --insidewrongcolor=dc322f95 --ringwrongcolor=dc322f95 --linecolor=07364295 --separatorcolor=07364295;

