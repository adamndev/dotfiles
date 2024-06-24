# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH=/opt/homebrew/bin:/usr/local/sbin:/bin:/usr/bin:/usr/local/bin:~/.composer/vendor/bin/:${PATH}

# Path to your oh-my-zsh installation.
export XDEBUG_CONFIG="idekey=VSCODE"
# export XDEBUG_SESSION=1

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# Add Pure path
# fpath+=$HOME/.zsh/pure
# autoload -U promptinit; promptinit
# prompt pure

HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
# ENABLE_CORRECTION="true"

export UPDATE_ZSH_DAYS=1

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump)

ZSH_AUTOSUGGEST_USE_ASYNC=true

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"
alias zsource="source ~/.zshrc"
alias zconfig="code-insiders ~/.zshrc"

alias tinker='php artisan tinker'
alias artisan='php artisan'

alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias stinker='sail artisan tinker'
alias sailscratch='sail down --rmi all -v'
alias phpunit="./vendor/bin/phpunit"
alias phprs="brew services restart php"
alias gitundo="git reset --soft HEAD~1"
alias dailybrew="brew update && brew upgrade && brew cleanup; brew doctor"
alias aliases="code $HOME/.aliases"

# Shortcuts
alias lib="cd $HOME/Library"
alias dbox="cd $HOME/Dropbox"
alias dtop="cd $HOME/Desktop"
alias proj="cd $HOME/projects"
alias dls="cd $HOME/Downloads"
alias dotfiles="cd $HOME/projects/dotfiles"

alias editphpini="code-insiders /opt/homebrew/etc/php/8.0/php.ini"

alias sshpoddev="ssh forge@35.178.126.122 -i /Users/adam/.ssh/id_rsa"
alias sshpodprod="ssh forge@18.134.9.115 -i /Users/adam/.ssh/id_rsa"

source $ZSH/oh-my-zsh.sh

# Add Pure path
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bit
export PATH="$PATH:/Users/adam/bin"
# bit end

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# pnpm
export PNPM_HOME="/Users/adam/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end