# ~/.bash_profile

#!/bin/sh
# Profile file. Runs on login.

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' 'm')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' 'm')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' ';44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' 'm')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '')"; a="${a%_}"

[ ! -f ~/.config/shortcutrc ] && shortcuts >/dev/null 2>&1

echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc ] && source "$HOME/.bashrc"

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

# Switch escape and caps if tty:
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
