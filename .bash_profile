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
# OpenSSL PATH


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
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/opt/qt5/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=/usr/local/opt/binutils/bin:$PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PS1="\h:\W \[\e[35m\]\u\[\e[m\]\[\e[35m\]\\$\[\e[m\] "
export PS4="\[\e[1;35m\]->\[\e[0m\] "
export LSCOLORS="fxgxcxdxbxegedabagacad"
export LS_COLORS="di=35:ln=36:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export CPPFLAGS="-I/usr/local/opt/qt5/include"
export LDFLAGS="-L/usr/local/opt/qt5/lib"
export PYENV_ROOT="$HOME/.pyenv"
export PYTHONPATH==$PYTHONPATH:/usr/local/bin/
export PATH=${HOME}/bin:$PATH
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
eval "$(pyenv init -)"
#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////





###################################################################
###                       OpenSSL PATH                          ###
###################################################################
export PATH=/usr/local/opt/openssl/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$LD_LIBRARY_PATH
export CPATH=/usr/local/opt/openssl/include:$CPATH
export LIBRARY_PATH=/usr/local/opt/openssl/lib:$LIBRARY_PATH
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

#//////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////
