########################################
# Set up oh-my-zsh
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

if [ -d $ZSH ]; then
  source $ZSH/oh-my-zsh.sh
fi

########################################
export EDITOR=/usr/bin/vim
export SVN_EDITOR=$EDITOR
########################################
# Start SSH Agent
SSH_ENV="$HOME/.ssh/environment"

complete_users=()
zstyle ':completion:*' users $complete_users

alias z="source ~/.zshrc"

[ -s "/Users/mwang/.scm_breeze/scm_breeze.sh" ] && source "/Users/mwang/.scm_breeze/scm_breeze.sh"

##################################################
# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && source ~/.localrc


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function f_notifyme {
  LAST_EXIT_CODE=$?
  CMD=$(fc -ln -1)
  # No point in waiting for the command to complete
  ~/bin/notifyme "$CMD" "$LAST_EXIT_CODE" &
}

# Generate J Aliases
if [[ -f ~/generate_j_aliases.sh ]]; then
    . ~/generate_j_aliases.sh
fi

