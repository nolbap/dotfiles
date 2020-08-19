#
# ~/.bashrc
#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

export PATH="/usr/lib/ccache/bin${PATH:+:}$PATH"
export CCACHE_DIR="/var/cache/ccache"

complete -cf doas

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

if [ "$(tty)" = "/dev/tty1" ]; then 
	pgrep -x i3 || exec startx
fi
