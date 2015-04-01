#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


#w3m -cols 99999 -dump http://en.wikipedia.org/wiki/$(date +%B_%d) | sed -n '/Events/,/Births/ p' | sed -n 's/^.*\* //p' | sed -n 's/?/-/p' | shuf -n 1
#echo ''


# Aliases
alias duh="du -h -d 0 [^.]*"
alias redwm='cd ~/dwm; updpkgsums; makepkg -efi --noconfirm; killall dwm'


# Exports
export TERM=screen-256color
#export TERM=xterm-256color



function aa_256 () 
{ 
    local o= i= x=`tput op` cols=`tput cols` y= oo= yy=;
    y=`printf %$(($cols-6))s`;
    yy=${y// /=};
    for i in {0..256};
    do
        o=00${i};
        oo=`echo -en "setaf ${i}\nsetab ${i}\n"|tput -S`;
        echo -e "${o:${#o}-3:3} ${oo}${yy}${x}";
    done
}
