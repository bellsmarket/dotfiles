#==================================================================
#==================================================================
#==================Welcome to Bell's market .bash_profile==========
#============I appreciate that you visited .bash_profile===========
#=================I\'m hoping you will enjoy profile===============
#===================Please come and play again♫====================
#===================by Bellsmarket V(=^･ω･^=)v=====================
#==================================================================
#==================================================================

### Write about alias in $HOME/.bashrc!!!!

### Heading List
# .bashrc && Completion
# Environment Variable List
# LESS man page colors
# OpenSSL PATH
# Python Setting


#if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
#elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
#elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
#elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
#fi



###################################################################
###                  .bashrc && Completion                      ###
###################################################################
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion

fi
#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////





###################################################################
###               Environment Variable List                     ###
###################################################################
export LANG=ja_JP.UTF-8
export PATH=${HOME}/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=${HOME}/Dropbox/Program/ShellScript:$PATH
export PATH=/usr/local/opt/qt5/bin:$PATH
export PATH=/usr/local/opt/binutils/bin:$PATH
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export CPPFLAGS="-I/usr/local/opt/qt5/include"
export LDFLAGS="-L/usr/local/opt/qt5/lib"


export PS1="\[\e[36m\h\]:\W \[\e[35m\]\u\[\e[m\]\[\e[35m\]\\$\[\e[m\] "
export PS4="\[\e[1;35m\]->\[\e[0m\] "
export LSCOLORS="fxgxcxdxbxegedabagacad"
export LS_COLORS="di=35:ln=36:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////


###################################################################
###    LESS man page colors (makes Man pages more readable)     ###
###################################################################
#export PAGER=lv
export LV="-Ou8 -c -Sh1;36 -Su0;4;32 -Ss7;37;1;33"
export LESS='-i -M -R -x 2 -K'
export PAGER=less

# man() {
#   env \
#   LESS_TERMCAP_mb=$(printf "\e[1;31m") \
#   LESS_TERMCAP_md=$(printf "\e[1;36") \
#   LESS_TERMCAP_me=$(printf "\e[0m") \
#   LESS_TERMCAP_se=$(printf "\e[0m") \
#   LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
#   LESS_TERMCAP_ue=$(printf "\e[0m") \
#   LESS_TERMCAP_us=$(printf "\e[1;32m") \
#   man "$@"
# }
export LESS_TERMCAP_mb=$'\e[1;35m'     # begin bold
export LESS_TERMCAP_md=$'\e[0;36m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[00;33m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal


###################################################################
###                       OpenSSL PATH                          ###
################################################################
export PATH=/usr/local/opt/openssl/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$LD_LIBRARY_PATH
export CPATH=/usr/local/opt/openssl/include:$CPATH
export LIBRARY_PATH=/usr/local/opt/openssl/lib:$LIBRARY_PATH
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig


###################################################################
###                       Python Setting                          ###
###################################################################
### Pyenv ---
# export PYENV_ROOT="$HOME/.pyenv"
# export PYTHONPATH==/usr/local/bin/:$PYTHONPATH
# export PATH=${HOME}/bin:$PATH
# export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
# eval "$(pyenv init -)"

### Virtualenv ---

#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////
# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/bellsmarket/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/bellsmarket/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/bellsmarket/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/bellsmarket/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
