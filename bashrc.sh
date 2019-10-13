export PATH="$(yarn global bin):$PATH"
export PATH="$HOME/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.exenv/bin:$PATH"

DIR=`dirname $BASH_SOURCE`
. $DIR/colors.sh
. $DIR/aliases.sh
. $DIR/config.sh
. $DIR/prompt.sh
. $DIR/git-completion.bash
. $DIR/git-flow-completion.bash

eval "$(direnv hook $0)"
# eval "$(thefuck --alias)"

find-up () {
    path=$(pwd)
    while [[ "$path" != "" && ! -e "$path/$1" ]]; do
        path=${path%/*}
    done
    echo "$path"
}

cdnvm(){
  cd "$@";
  nvm_path=$(find-up .nvmrc | tr -d '[:space:]')

  # If there are no .nvmrc file, use the default nvm version
  if [[ ! $nvm_path = *[^[:space:]]* ]]; then

    declare default_version;
    default_version=$(nvm version default);

    # If there is no default version, set it to `node`
    # This will use the latest version on your machine
    if [[ $default_version == "N/A" ]]; then
        nvm alias default node;
        default_version=$(nvm version default);
    fi

    # If the current version is not the default version, set it to use the default version
    if [[ $(nvm current) != "$default_version" ]]; then
        nvm use default;
    fi

    elif [[ -s $nvm_path/.nvmrc && -r $nvm_path/.nvmrc ]]; then
    declare nvm_version
    nvm_version=$(<"$nvm_path"/.nvmrc)

    declare locally_resolved_nvm_version
    # `nvm ls` will check all locally-available versions
    # If there are multiple matching versions, take the latest one
    # Remove the `->` and `*` characters and spaces
    # `locally_resolved_nvm_version` will be `N/A` if no local versions are found
    locally_resolved_nvm_version=$(nvm ls --no-colors "$nvm_version" | tail -1 | tr -d '\->*' | tr -d '[:space:]')

    # If it is not already installed, install it
    # `nvm install` will implicitly use the newly-installed version
    if [[ "$locally_resolved_nvm_version" == "N/A" ]]; then
        nvm install "$nvm_version";
    elif [[ $(nvm current) != "$locally_resolved_nvm_version" ]]; then
        nvm use "$nvm_version";
    fi
  fi
}
alias cd='cdnvm'