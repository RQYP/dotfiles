# ~/.bashrc

# -- If not running interactively, don't do anything --
[[ $- != *i* ]] && return

# -- auto adds color to ls --
alias ls='ls --color=auto'

# -- infinite history --
HISTSIZE= HISTFILESIZE=

# -- wal --
(cat ~/.cache/wal/sequences &)
. "${HOME}/.cache/wal/colors.sh"

# -- bare dotfiles repo --
alias dotfiles='/usr/bin/git --git-dir=/home/ahmza/workspace/dotfiles --work-tree=/home/ahmza'

# -- color for user and directory --
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
