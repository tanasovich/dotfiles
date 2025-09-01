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

HISTCONTROL=ignoreboth

# Prompt setup
PS1="[\w]\n\$ "
PS2="=>"

# Minecraft
alias minecraft="~/.minecraft/minecraft-launcher"

# Android Studio IDE
alias android-studio="/opt/android-studio/bin/studio"

# Dotfile version controlling
alias dotfiler="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

