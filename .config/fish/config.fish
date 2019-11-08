
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -x LESS_TERMCAP_mb (printf "\033[01;32m")
set -x LESS_TERMCAP_md (printf "\033[01;36m")
set -x LESS_TERMCAP_me (printf "\033[0m")
set -x LESS_TERMCAP_se (printf "\033[0m")
set -x LESS_TERMCAP_so (printf "\033[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\033[0m")
set -x LESS_TERMCAP_us (printf "\033[01;32m")

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

set PATH $HOME/.pyenv/shims $PATH
eval (pyenv init - | source)

#
# Load completions shared by ssh and scp.
#
__fish_complete_ssh ssh

#
# ssh specific completions
#
complete -x -c ssh -d "Remote" -a "(__fish_complete_user_at_hosts)"

# Disable as username completion is not very useful.
# complete -x -c ssh -d User -a "
# (__fish_print_users | string match -r -v '^_')@
# "

complete -c ssh -d "Command to run" -x -a '(__fish_complete_subcommand --fcs-skip=2)'

complete -c ssh -s a -d "Disables forwarding of the authentication agent"
complete -c ssh -s A -d "Enables forwarding of the authentication agent"
# TODO: Improve this since /proc/net/arp is not POSIX compliant.
complete -x -c ssh -s b -d "Interface to transmit from" -a "
(cut -d ' ' -f 1 /proc/net/arp 2>/dev/null | string match -r -v '^IP')
"

complete -x -c ssh -s e -d "Escape character" -a "\^ none"
complete -c ssh -s f -d "Go to background"
complete -c ssh -s g -d "Allow remote host to connect to local forwarded ports"
complete -c ssh -s I -d "Smartcard device"
complete -c ssh -s k -d "Disable forwarding of Kerberos tickets"
complete -c ssh -s l -x -a "(__fish_complete_users)" -d "User"
complete -c ssh -s m -d "MAC algorithm"
complete -c ssh -s n -d "Prevent reading from stdin"
complete -c ssh -s N -d "Do not execute remote command"
complete -c ssh -s p -x -d "Port"
complete -c ssh -s q -d "Quiet mode"
complete -c ssh -s s -d "Subsystem"
complete -c ssh -s t -d "Force pseudo-tty allocation"
complete -c ssh -s T -d "Disable pseudo-tty allocation"
complete -c ssh -s x -d "Disable X11 forwarding"
complete -c ssh -s X -d "Enable X11 forwarding"
complete -c ssh -s L -d "Locally forwarded ports"
complete -c ssh -s R -d "Remotely forwarded ports"
complete -c ssh -s D -d "Dynamic port forwarding"
complete -c ssh -s c -d "Encryption cipher" -xa "(ssh -Q cipher)"

# Also look up hosts from the history
function __ssh_history_completions --argument limit
    if string match -q ""
        set limit 100
    end

    history --prefix ssh | sed -n "s/.* \([A-Za-z0-9._:-]\+@[A-Za-z0-9._:-]\+\).*/\1/p" | head -n $limit
end

complete -k -c ssh -a '(__ssh_history_completions 100)' -f -d "Remote"
set -g fish_user_paths "/usr/local/opt/binutils/bin" $fish_user_paths


###################################################################
###                      bash Alias List                        ###
###################################################################
function grep
    ggrep --color=auto $argv
end

function sed
    gsed
end

function ldd
    otool -L $argv
end

function ll
  ls -laF
end

set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
set -x LSCOLORS fxgxcxdxbxegedabagacad
set -x GOPATH $HOME/go/package  $HOME/go/workspace

set -xg LC_ALL ja_JP.UTF-8
set -xg LANG ja_JP.UTF-8

