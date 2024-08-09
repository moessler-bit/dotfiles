xset s 180 &
xss-lock slock &
dwmstatus 2>&1 >/dev/null &
/usr/lib/xfce-polkit/xfce-polkit &
xrdb -merge $HOME/.Xresources
urxvtd -q -f -o
exec dwm
