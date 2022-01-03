_ps=(xbindkeys picom dunst xfce-polkit) #xfce4-power-manager)
for _prs in "${_ps[@]}"; do
		if [[ `pidof ${_prs}` ]]; then
					killall -9 ${_prs}
						fi
					done

#if [[ $(xrandr -q | grep "HDMI-1 connected") ]]; then
#	xrandr --output eDP-1 --off --output HDMI-1 --primary --auto
#else
#	xrandr --output eDP-1 --primary --auto
#fi

#nm-applet &
exec mpd &

#launch polybar
~/.config/i3/bin/i3bar.sh

#launch compositor
~/.config/i3/bin/i3comp.sh

#launch dunst
~/.config/i3/bin/i3dunst.sh

#bash ~/.config/polybar/launch.sh --forest &
xbindkeys &
#picom -f &
#brightnessctl --device="asus::kbd_backlight" set 1
#brightnessctl --device="asus::kbd_backlight" set 0

nitrogen --restore &
#xfce4-power-manager &

if [[ ! `pidof xfce-polkit` ]]; then
		/usr/lib/xfce-polkit/xfce-polkit &
fi
