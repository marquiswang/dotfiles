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
export EDITOR=/usr/bin/vim
export SVN_EDITOR=$EDITOR
########################################
# Start SSH Agent
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
     echo "Initialising new SSH agent..."
     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
     echo Succeeded
     chmod 600 "${SSH_ENV}"
     source "${SSH_ENV}" > /dev/null
     /usr/bin/ssh-add;
}

function upload {
  scp $1 daedalus.marquiswang.com:www/files
}

function download {
  wget daedalus.marquiswang.com/files/$1
}

if [ -f "${SSH_ENV}" ]; then
     source "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
         start_agent;
     }
else
     start_agent;
fi 

complete_users=()
zstyle ':completion:*' users $complete_users

##################################################
# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && source ~/.localrc

