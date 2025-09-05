# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=/home/vtanasovych/.local/bin:/home/vtanasovych/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/vtanasovych/.dotnet/tools
export PATH

if [ "$TERM" = "linux" ]; then
    # Using custom palette at TTY
    echo -en "\e]P0373d23"  # color0
    echo -en "\e]P1c3877d"  # color1
    echo -en "\e]P279a681"  # color2
    echo -en "\e]P3a99768"  # color3
    echo -en "\e]P48797c6"  # color4
    echo -en "\e]P5b786b2"  # color5
    echo -en "\e]P66aa4ae"  # color6
    echo -en "\e]P7c1cda0"  # color7
    echo -en "\e]P8667047"  # color8
    echo -en "\e]P9d49f96"  # color9
    echo -en "\e]PA8ebb97"  # color10
    echo -en "\e]PBbead7d"  # color11
    echo -en "\e]PC9fadd5"  # color12
    echo -en "\e]PDc99ec4"  # color13
    echo -en "\e]PE80b9c4"  # color14
    echo -en "\e]PFf5f8ef"  # color15

    # Set cursor as blinking block
    echo -e '\033[?6c'

    # Clear screen for pleasant look
    clear
fi
