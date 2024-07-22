if status is-interactive
    set -gx GPG_TTY (tty)
end
set -gx EDITOR nvim
alias vim="nvim"
set -g fish_greeting

