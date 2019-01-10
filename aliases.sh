# Heroku git deploy #
alias hp='git add .; git add -u; git commit -am "hotfix"; git push heroku master;'
alias gp='git add .; git add -u; git commit -am "hotfix"; git push github master;'
alias gpd='gp=; heroku logs -t'

alias hrm='heroku run rake db:migrate'

# Change fucking mac address
alias mac='sudo ifconfig en0 ether 001b63af02b2'

# Capistrano and git deploy
alias gapd='git add -A; git commit -m "pushed by gapd"; git push; cap deploy;'
alias gapdm='git add -A; git commit -m "pushed by gapd"; git push; cap deploy:migrations;'
alias ctl='cap tail_log'

alias hpd='git add --all; git add .; git add -A; git add -u; git commit -m "pusher by heroku"; git push heroku master;'
alias hppd='rake assets:precompile; git add .; git add -A; git add -u; git commit -m "pusher by heroku"; git push heroku master; rm -rf public/assets; echo "Finita!"';

alias cap='bundle exec cap'

alias gmapd='git add .; git commit -m "pushed by auto-monkey"; git push gitolite monkey; cap monkey deploy;'
alias gmapdm='git add .; git commit -m "pushed by auto-monkey"; git push gitolite monkey; cap monkey deploy:migrations;'

alias fsdev='foreman start -f Procfile.dev'
alias hl='heroku local -f Procfile.dev'

alias smf='cd ~/code/factory/smpp; rsync -vr mcf.zalapu:~/smpp/ . --exclude=.git --exclude=*.log;'
alias smp='cd ~/code/factory/smpp; rsync -vr . mcf.zalapu:~/smpp/ --exclude=.git --exclude=*.log;'

function cr() { cap remote "$@" ;}
