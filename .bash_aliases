# vim: set syntax=sh :

alias ..="cd .."

alias c="clear"

alias l="ls -G"
alias ls="ls -G"
alias la="ls -aGh"
alias ll="ls -lGh"
alias ccat='source-highlight --out-format=esc -o STDOUT -i'

alias pj='cd ~/Projects/'

function title()
{
    echo -ne "\e]1;${1}\a"
}

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}

if [[ "Darwin" == `uname -s`  ]]; then
    alias v='mvim -f'
    alias brwupg="brew update && brew upgrade"
else
    alias v='gvim -f'
fi

set completion-ignore-case on
set show-all-if-ambiguous on

fortune | cowsay -b
