#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd

#export DE=xfce
#nitrogen --restore &
#transmission-daemon &
setxkbmap ca fr
export XDG_CURRENT_DESKTOP="KDE" 
export KDE_SESSION_VERSION="5"
#guake &
xrdb ~/.Xresources
#exec gnome-session
#exec herbstluftwm --locked
exec i3
#exec i3 -c .config/themer/current/i3.conf
#exec startkde
#exec startxfce4
#exec startlxqt
# ...or the Window Manager of your choice

#gsettings-data-convert &
#xdg-user-dirs-gtk-update &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/gnome-settings-daemon/gnome-settings-daemon &
#/usr/lib/gnome-user-share/gnome-user-share &
#eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
#export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
#exec cerbere
