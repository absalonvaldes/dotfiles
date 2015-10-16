# Path to your oh-my-zsh installation.
export ZSH=/home/absalon/.oh-my-zsh

ZSH_THEME="bira"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git extract docker)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=$PATH:/home/absalon/Plataformas/android-studio/bin
export PATH=$PATH:/home/absalon/Plataformas/apache-maven-3.3.3/bin
export PATH=$PATH:/home/absalon/Plataformas/apache-ant-1.9.6/bin
export PATH=$PATH:/home/absalon/Plataformas/genymotion

export ANDROID_HOME=/home/absalon/Android/Sdk

source $ZSH/oh-my-zsh.sh
zstyle ':completion:*' special-dirs true

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# export SSH_KEY_PATH="~/.ssh/dsa_id"
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export DOTFILES=$HOME/dotfiles
export PATH=~/.composer/vendor/bin:$PATH

alias tmux="if tmux has-session -t $USER; then tmux -2 attach -t $USER; else tmux -2 new -s $USER; fi"
alias mc="EDITOR=vim mc"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
