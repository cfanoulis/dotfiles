export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/fanoulis/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

HYPHEN_INSENSITIVE="true"

DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=5

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy/mm/dd"

plugins=(git alias-finder direnv cargo colored-man-pages command-not-found common-aliases docker docker-compose yarn zsh_reload web-search vscode rust rustup)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export EDITOR=code-insiders
export HISTFILE=~/.shellhistory
export HISTSIZE=100
export SAVEHIST=10000

# Options 
setopt autocd beep extendedglob notify
unsetopt nomatch
bindkey -e

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source paths
source ~/.pathsetup.zsh

# Include aliases
source ~/.aliases.zsh

# Start the SSH agent
ps -p $SSH_AGENT_PID > /dev/null || eval "$(ssh-agent -s)"
ssh-add

# Enable GPG TTY
export GPG_TTY=$(tty)