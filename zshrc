########################################
# Set up oh-my-zsh
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="prose"

if [ -d $ZSH ]; then
  source $ZSH/oh-my-zsh.sh
fi
########################################

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && source ~/.localrc
