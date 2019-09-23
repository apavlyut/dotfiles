PS1="\n\u@iMac:\w \[$CYAN\]\$(vcprompt)\[$NO_COLOR\]\n→ "
# PS1="\n\[$GREEN\]\$(~/.rvm/bin/rvm-prompt i v p g)\[$NO_COLOR\] $PS1"
PS1="\n\[$GREEN\]\$(rbenv version-name)\[$NO_COLOR\] $PS1"

PROMPT_COMMAND='if [[ "$bashrc" != "$PWD" && "$PWD" != "$HOME" && -e .bashrc ]]; then bashrc="$PWD"; . .bashrc; echo "loaded .bashrc: "; cat .bashrc; fi;'