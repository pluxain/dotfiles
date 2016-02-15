# Some basic aliases to list files and colorize the output
alias ls='ls -G'
alias ll='ls -lhGa'
alias kahlan='vendor/bin/kahlan --ff=1'
alias phpunit='vendor/bin/phpunit --colors tests'
alias nanoc='bundle exec nanoc'

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

# Add Composer global dependencies (Laravel) to path
export PATH=${PATH}:~/.composer/vendor/bin

export YAKAMAILER_ENVIRONMENT=development

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home

# rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
