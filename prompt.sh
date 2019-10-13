PS1="\n\u@iMac:\w \[$CYAN\]\$(vcprompt)\[$NO_COLOR\]\n→ "
# PS1="\n\[$GREEN\]\$(~/.rvm/bin/rvm-prompt i v p g)\[$NO_COLOR\] $PS1"
RUBY_PS="\[$RED\]\$(rbenv version-name)\[$NO_COLOR\] "
NODE_PS="\[$GREEN\]\$(nvm current)\[$NO_COLOR\] "

ELIXIR_V="asdf current elixir"

cdel(){
  if [[ $($ELIXIR_V) == *"please run"* ]]; then
    echo ''
  else
    $ELIXIR_V | cut -d '(' -f 1 | xargs
  fi
}

PS1="\n$NODE_PS$RUBY_PS\[$BLUE\]\$(cdel)\[$NO_COLOR\] $PS1"
