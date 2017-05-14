#!/bin/sh

i3-msg exec --no-startup-id compton --config ~/.config/compton.conf -b
i3-msg exec --no-startup-id dropbox start
i3-msg exec --no-startup-id nm-applet &
i3-msg exec --no-startup-id redshift-gtk &
sleep 5
i3-msg exec --no-startup-id keepassx2 &
