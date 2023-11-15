# Hide welcome message
set -U fish_greeting

set VIRTUAL_ENV_DISABLE_PROMPT "1"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Simplify my life
alias g="git"
alias l="ll"
alias gl="git l"
alias gs="git s"
alias gd="git d"
alias d="docker"
alias dc="docker-compose"
alias vim="nvim"

# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -ald --color=always --group-directories-first --icons .*' # show only dotfiles
alias ip='ip -color'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias cat='bat --style header --style snip --style changes --style header'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

