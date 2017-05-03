# Some basic aliases to list files and colorize the output
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# Function to launch scripts contained in ~/dotfiles/scripts which are basically aimed to launch tmux sessions for dev
function launch() {
	sh $1.sh $2;
}

# Including git-completion
#if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
# source /usr/local/git/contrib/completion/git-completion.bash
#fi

# Including git-completion
# if [ -f /usr/local/git/contrib/completion/git-prompt.sh ]; then
#   source /usr/local/git/contrib/completion/git-prompt.sh
# fi

# Including git-completion
# if [ -f /usr/local/git/contrib/completion/git-prompt.zsh ]; then
#   source /usr/local/git/contrib/completion/git-prompt.zsh
# fi

# Use brew bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# Export prompt settings
# export PS1='\[\e[37m\]\u@\h:\[\e[34m\]\w$(__git_ps1 "\[\e[32m\] [%s]")\[\e[37m\]#\[\e[0m\]' 

# Add Composer global dependencies (Laravel) to path
export PATH=${PATH}:~/.composer/vendor/bin

# Add Android Sdk path
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# Java 1.7
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home
# Java 1.8
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home

# rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

# yarn
export PATH="$PATH:`yarn global bin`"

# custom scripts (tmux, etc.)
export PATH="$PATH:~/dotfiles/scripts"
