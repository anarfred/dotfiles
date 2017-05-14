# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="/home/nrfrd/bin:$PATH"
# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
#BROWSER=/usr/bin/qutebrowser
#EDITOR=/usr/bin/vim
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #
export DESKTOP_SESSION="kde"

source /etc/bash_completion.d/climate_completion
chmod +x ~/.vocab
~/.vocab
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
