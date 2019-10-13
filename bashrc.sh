DIR=`dirname $BASH_SOURCE`
. $DIR/colors.sh
. $DIR/aliases.sh
. $DIR/config.sh
. $DIR/prompt.sh
. $DIR/git-completion.bash
. $DIR/git-flow-completion.bash

export PATH="$(yarn global bin):$PATH"
export PATH="$HOME/.bin:$PATH"

eval "$(direnv hook $0)"
# PROMPT_COMMAND='if [[ "$bashrc" != "$PWD" && "$PWD" != "$HOME" && -e .bashrc ]]; then bashrc="$PWD"; . .bashrc; echo "loaded .bashrc: "; cat .bashrc; fi;'
# echo $PROMPT_COMMAND
# eval "$(thefuck --alias)"
