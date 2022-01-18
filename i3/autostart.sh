killall -9 xbindkeys polybar dunst

if [[ ! `pidof xfce-polkit` ]]; then
	        /usr/lib/xfce-polkit/xfce-polkit &
fi

xbindkeys &
picom &
nitrogen --restore &
~/.config/polybar/hack/launch.sh &
dunst &
