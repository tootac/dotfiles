if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# sets pointer so that it's not just an X
xsetroot -cursor_name left_ptr

# reads X configuration
xrdb ~/.Xresources

setxkbmap -layout 'us,ru' -option 'grp:lwin_toggle'


sh ~/bin/startdwm
#sh ~/bin/statusdwm


wmname LG3D


#exec startxfce4
#exec openbox-session
#exec spectrwm
exec dwm
