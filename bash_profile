parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# git branch 2>/dev/null | /usr/bin/grep '^*' | colrm 1 2)"
}

PS1_date="\[\033[38;5;237m\]\d\[$(tput sgr0)\]\[\033[38;5;15m\]"
PS1_time="\[$(tput sgr0)\]\[\033[38;5;236m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\]"
PS1_wdir="\[$(tput sgr0)\]\[\033[38;5;24m\]\w"
PS1_gitbranch="\e[035;9;309m\]\$(parse_git_branch)"
PS1_gt="\[$(tput bold)\]\[$(tput sgr0)\]\[\e[38;5;214m\]>"
PS1_other="\[$(tput sgr0)\]\[$(tput sgr0)\]\[\e[38;5;15m\]"
PS1_userHost="\u@\h \[\033[34m\]"

export PS1="${PS1_userHost}${PS1_wdir}${PS1_gitbranch}${PS1_gt}${PS1_other} \[$(tput sgr0)\]"
