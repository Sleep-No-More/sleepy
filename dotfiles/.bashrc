#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
export XCURSOR_THEME=Bibata-Modern-Classic
alias cat='bat --style=plain'

# Show system info on terminal startup
fastfetch
