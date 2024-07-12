# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
PS1="\[\033[1;35m\]  \[\e[1;37m\] \w \[\e[1;32m\]󰅂\[\e[1;37m\] "
alias "ufetch"="/home/sus/ufetch-gentoo"
alias "yazi"="TERM=foot yazi"
alias "port-install"="doas emerge -a"
alias "port-update"="doas emaint -a sync"
alias "port-upgrade"="doas emerge -avuND @world"
alias "port-search"="emerge --search"
alias "port-desel"="doas emerge -a --deselect"
alias "port-clean"="doas emerge -vac"
alias "port-show"="doas emerge -p"
alias "port-uses"="equery uses"
alias "port-deps"="equery depends"
alias "port-list"="equery list"
alias "clean-port-dist"="doas eclean-dist --deep"
alias "clean-port-pkg"="doas eclean-pkg --deep"
alias "doed"="doas $EDITOR"
alias "pwmix"="pulsemixer"
alias "ezfd"="find / -name "$*" 2>/dev/null"
ufetch
