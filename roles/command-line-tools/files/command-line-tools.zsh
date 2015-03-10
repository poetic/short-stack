# Add hub to git alias
eval "$(hub alias -s)"

# Other useful aliases
alias c='clear'
alias lh='ls -d .*' # show hidden files/directories only
alias l='ls -al'
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias ~='cd ~'

# Git aliases
alias ga='git add'
alias gpush='git push'
alias gpull='git pull'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gam='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'

# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[  ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"
