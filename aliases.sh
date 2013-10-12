# Heroku git deploy
alias hp='git add .; git commit -m "pushed by hp"; git push heroku master;'
alias hrm='heroku run rake db:migrate'

# Change fucking mac address
alias mac='sudo ifconfig en0 ether 001b63af02b2'

# Capistrano and git deploy
alias gapd='git add .; git commit -m "pushed by gapd"; git push; cap deploy;'
alias gapdm='git add .; git commit -m "pushed by gapd"; git push; cap deploy:migrations;'
alias ctl='cap tail_log'

alias hpd='git add .; git commit -m "pusher by heroku"; git push heroku master;'

alias gmapd='git add .; git commit -m "pushed by auto-monkey"; git push gitolite monkey; cap monkey deploy;'
alias gmapdm='git add .; git commit -m "pushed by auto-monkey"; git push gitolite monkey; cap monkey deploy:migrations;'

alias fsdev='foreman start -f Procfile.dev'

function cr() { cap remote "$@" ;}