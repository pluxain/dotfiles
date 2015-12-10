# Some basic aliases to list files and colorize the output
alias ls='ls -G'
alias ll='ls -lhGa'
alias kahlan='vendor/bin/kahlan --ff=1';

# Including git-completion
#if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
# source /usr/local/git/contrib/completion/git-completion.bash
#fi

# Including git-completion
if [ -f /usr/local/git/contrib/completion/git-prompt.sh ]; then
  source /usr/local/git/contrib/completion/git-prompt.sh
fi

# Including git-completion
if [ -f /usr/local/git/contrib/completion/git-prompt.zsh ]; then
  source /usr/local/git/contrib/completion/git-prompt.zsh
fi

# Export prompt settings
# export PS1='\[\e[37m\]\u@\h:\[\e[34m\]\w$(__git_ps1 "\[\e[32m\] [%s]")\[\e[37m\]#\[\e[0m\]' 

# export PATH=/usr/local/bin:$(brew --prefix homebrew/php/php55)/bin:${PATH}

# Add Android SDK platform tools to path
# export PATH=${PATH}:/Applications/Android\ Studio.app/sdk/platform-tools

# Add Path to MySQL install to enable mysql in terminal
# export PATH=${PATH}:/usr/local/mysql/bin

# Add Composer global dependencies (Laravel) to path
export PATH=${PATH}:~/.composer/vendor/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export YAKAMAILER_ENVIRONMENT=development

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home
