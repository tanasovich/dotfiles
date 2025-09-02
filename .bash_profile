# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=/home/vtanasovych/.local/bin:/home/vtanasovych/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/vtanasovych/.dotnet/tools
export PATH

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P02b1f1d" #black
    echo -en "\e]P1473532" #red
    echo -en "\e]P2a55044" #green
    echo -en "\e]P3457b51" #yellow
    echo -en "\e]P47f6b32" #blue
    echo -en "\e]P55167b5" #magenta
    echo -en "\e]P6994a93" #cyan
    echo -en "\e]P7347883" #white
    echo -en "\e]P8d6c1be" #light black
    echo -en "\e]P97f635e" #light red
    echo -en "\e]PAc36556" #light green
    echo -en "\e]PB569464" #light yellow
    echo -en "\e]PC998140" #light blue
    echo -en "\e]PD687fcd" #light magenta
    echo -en "\e]PEb360ad" #light cyan
    echo -en "\e]PF43919e" #light white
    clear #for background artifacting
fi

