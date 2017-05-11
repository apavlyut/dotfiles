DIR=`dirname $BASH_SOURCE`
. $DIR/colors.sh
. $DIR/aliases.sh
. $DIR/config.sh
. $DIR/prompt.sh
. $DIR/git-completion.bash
. $DIR/git-flow-completion.bash

export PATH="$HOME/.bin:$PATH"

eval "$(direnv hook $0)"
eval "$(thefuck --alias)"
