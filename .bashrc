# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# Set English language (just for any case, who knows)
LANG=en_US.UTF-8

# Set Spanish time locale
LC_TIME=es_ES.UTF-8

# Ignore duplicate commands and commands with leading whitespaces
HISTCONTROL=ignoreboth

# Prompt setup
PS1="[\w]\n\$ "
PS2="=>"

# Minecraft
alias minecraft="~/.minecraft/minecraft-launcher"

# Dotfile version controlling
alias dotfiler="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Add basic auto-completions for dotfiler alias
if [ -f /usr/share/bash-completion/completions/git ]; then
    source /usr/share/bash-completion/completions/git
    __git_complete dotfiler _git_main
fi

