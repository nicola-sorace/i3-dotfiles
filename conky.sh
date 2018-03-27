cd /home/nicola/.config/i3/conky

killall conky
val=$?

if [ $val -ne 0 ]; then
	conky -c $1
fi

sleep 1
