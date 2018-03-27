#!/bin/bash

path="/home/nicola/Documents/wallpapers/"
cd "$path"
file=`ls *.png | sort -R | tail -n1`

#echo "$file"
feh --bg-fill "$path$file"

exit 0
