# -------------------------------------------------------------------
# Ruby Config
# -------------------------------------------------------------------

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# -------------------------------------------------------------------
# Ruby Aliases
# -------------------------------------------------------------------
alias rake="noglob rake" # necessary to make rake work inside of zsh
alias be='bundle exec'
alias rials='rails'
alias raisl='rails'
alias rs='rails s'
alias rc='rails c'
alias rdb='rake db:migrate db:test:prepare'
alias rv='rbenv'
