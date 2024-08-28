xset s 180 &
xss-lock slock &
dwmstatus 2>&1 >/dev/null &
/usr/lib/xfce-polkit/xfce-polkit &
pactl set-sink-mute 0 true &
exec dwm
