# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# COLORS
#------
case $TERM in
    xterm|screen)
        TERM="${TERM}-256color"
esac

# PROMPT
#------
# - show pwd in title bar - http://stackoverflow.com/questions/10517128/change-gnome-terminal-title-to-reflect-the-current-directory
#PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'
function title { echo -en "\033]2;$1\007"; }
function cd { dir=$1; if [ -z "$dir" ]; then dir=~; fi; builtin cd "$dir" && title "`pwd`"; }
cd "`pwd`"

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

PS1=": "

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

# PATH
#----

# Icon
export PATH=$PATH:$HOME/icon-v950/bin

# Go
export PATH=$PATH:/usr/local/go/bin

# OPAM (OCaml PAckage Manager) configuration
. /home/username/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# tanagra
if [ -z "$TANAGRA" ];  then
    export TANAGRA="/media/My Book/home/g/dev/pksij/tanagra"
    export PATH="/media/My Book/home/g/dev/pksij/tanagra/bin":$PATH
fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/username/.gvm/bin/gvm-init.sh" ]] && source "/home/username/.gvm/bin/gvm-init.sh"
