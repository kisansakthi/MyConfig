if [[ $(xrandr -q | grep "HDMI1 connected") ]]; then
	xrandr --output eDP1 --off --output HDMI1 --primary --auto
else
	xrandr --output eDP1 --primary --auto
fi
