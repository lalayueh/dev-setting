if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
