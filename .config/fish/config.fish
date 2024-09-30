if status is-interactive
    set -gx GPG_TTY (tty)
end
set -gx EDITOR nvim
set -gx BAT_THEME ansi
alias vim="nvim"
set -g fish_greeting

