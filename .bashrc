### Write about The Environment PATH in $HOME/.bash_profile!!!!


### Heading List
# bash_Command List
# LESS man page colors
# bash_history
# Colors
# MYSQL Setting


###################################################################
###                      bash_Command List                      ###
###################################################################
#Directory
alias ..='cd ..;pwd'
alias ls="ls -G"
alias ll="ls -la"
alias lsd="ls -l |grep -E "^d""
alias tree="tree -N"


alias cp="cp -i"
alias mv="mv -i"


# Use if colordiff exists
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

alias gst='git status'
alias du="du -sh ./*/"
alias grep="ggrep  --color=auto"
alias sed="gsed"
alias gcc="gcc -g -O0"
alias cal="cal |lolcat -p 1"
alias ldd="otool -L"

alias mycli="mycli -S ${mysql}"
alias ggr="googler"

#Network
alias ping="ping -c 10"
#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////





###################################################################
###    LESS man page colors (makes Man pages more readable)     ###
###################################################################

man() {
  env \
  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
  LESS_TERMCAP_md=$(printf "\e[1;36") \
  LESS_TERMCAP_me=$(printf "\e[0m") \
  LESS_TERMCAP_se=$(printf "\e[0m") \
  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
  LESS_TERMCAP_ue=$(printf "\e[0m") \
  LESS_TERMCAP_us=$(printf "\e[1;32m") \
  man "$@"
}
PYTHONPATH==$PYTHONPATH:/usr/local/bin/

#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////





###################################################################
###                       bash_history                          ###
###################################################################

export HISTCONTROL=ignoreboth:erasedups
export HISTTIMEFORMAT="%m/%d %H:%M:%S:   "
export HISTSIZE=50000
export HISTFILESIZE=50000

#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////





###################################################################
###                          Colors                             ###
###################################################################

# Reset
Color_Off='\[\e[0m\]'       # Text Reset

# Regular Colors
Black='\[\e[0;30m\]'        # Black
Red='\[\e[0;31m\]'          # Red
Green='\[\e[0;32m\]'        # Green
Yellow='\[\e[0;33m\]'       # Yellow
Blue='\[\e[0;34m\]'         # Blue
Purple='\[\e[0;35m\]'       # Purple
Cyan='\[\e[0;36m\]'         # Cyan
White='\[\e[0;37m\]'        # White

# Bold
BBlack='\[\e[1;30m\]'       # Black
BRed='\[\e[1;31m\]'         # Red
BGreen='\[\e[1;32m\]'       # Green
BYellow='\[\e[1;33m\]'      # Yellow
BBlue='\[\e[1;34m\]'        # Blue
BPurple='\[\e[1;35m\]'      # Purple
BCyan='\[\e[1;36m\]'        # Cyan
BWhite='\[\e[1;37m\]'       # White

# Underline
UBlack='\[\e[4;30m\]'       # Black
URed='\[\e[4;31m\]'         # Red
UGreen='\[\e[4;32m\]'       # Green
UYellow='\[\e[4;33m\]'      # Yellow
UBlue='\[\e[4;34m\]'        # Blue
UPurple='\[\e[4;35m\]'      # Purple
UCyan='\[\e[4;36m\]'        # Cyan
UWhite='\[\e[4;37m\]'       # White

# Background
On_Black='\[\e[40m\]'       # Black
On_Red='\[\e[41m\]'         # Red
On_Green='\[\e[42m\]'       # Green
On_Yellow='\[\e[43m\]'      # Yellow
On_Blue='\[\e[44m\]'        # Blue
On_Purple='\[\e[45m\]'      # Purple
On_Cyan='\[\e[46m\]'        # Cyan
On_White='\[\e[47m\]'       # White

# High Intensity
IBlack='\[\e[0;90m\]'       # Black
IRed='\[\e[0;91m\]'         # Red
IGreen='\[\e[0;92m\]'       # Green
IYellow='\[\e[0;93m\]'      # Yellow
IBlue='\[\e[0;94m\]'        # Blue
IPurple='\[\e[0;95m\]'      # Purple
ICyan='\[\e[0;96m\]'        # Cyan
IWhite='\[\e[0;97m\]'       # White

# Bold High Intensity
BIBlack='\[\e[1;90m\]'      # Black
BIRed='\[\e[1;91m\]'        # Red
BIGreen='\[\e[1;92m\]'      # Green
BIYellow='\[\e[1;93m\]'     # Yellow
BIBlue='\[\e[1;94m\]'       # Blue
BIPurple='\[\e[1;95m\]'     # Purple
BICyan='\[\e[1;96m\]'       # Cyan
BIWhite='\[\e[1;97m\]'      # White

# High Intensity backgrounds
On_IBlack='\[\e[0;100m\]'   # Black
On_IRed='\[\e[0;101m\]'     # Red
On_IGreen='\[\e[0;102m\]'   # Green
On_IYellow='\[\e[0;103m\]'  # Yellow
On_IBlue='\[\e[0;104m\]'    # Blue
On_IPurple='\[\e[10;95m\]'  # Purple
On_ICyan='\[\e[0;106m\]'    # Cyan
On_IWhite='\[\e[0;107m\]'   # White

#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////





###################################################################
###                      MYSQL Setting                          ###
###################################################################

#mysql_path="/tmp/mysql.sock"
#mysql="/Applications/MAMP/tmp/mysql/mysql.sock"

#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////
