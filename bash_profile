# Some basic aliases to list files and colorize the output
alias ls='ls -G'
alias ll='ls -lhG'

# Including git-completion
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
  source /usr/local/git/contrib/completion/git-completion.bash
fi

# Including git-completion
if [ -f /usr/local/git/contrib/completion/git-prompt.sh ]; then
  source /usr/local/git/contrib/completion/git-prompt.sh
fi

# Export prompt settings
export PS1='\[\e[37m\]\u@\h:\[\e[34m\]\w$(__git_ps1 "\[\e[32m\] [%s]")\[\e[37m\]#\[\e[0m\]' 

# Add Android SDK platform tools to path
export PATH=${PATH}:/Applications/Android\ Studio.app/sdk/platform-tools
# Add Path to MySQL install to enable mysql in terminal
export PATH=${PATH}:/usr/local/mysql/bin
