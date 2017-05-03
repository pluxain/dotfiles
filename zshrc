# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="ys"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Settings for powerlevel9k theme
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_STATUS_VERBOSE=false
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B1'
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B3'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('root_indicator' 'context' 'dir' 'vcs')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('time')
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%} "
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M - %d/%m/%y}"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="214"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="012"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="012"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="red"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="214"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="214"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='214'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history history-substring-search terminalapp brew nano atom wd)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=/$HOME/.rvm/bin:/usr/local/bin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Android\ Studio.app/sdk/platform-tools:/usr/local/mysql/bin:$PATH

export PATH=/usr/local/sbin:/usr/local/bin:$PATH

fpath=(/usr/local/share/zsh-completions $fpath)

source ~/.bash_profile
