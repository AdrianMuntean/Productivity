# .bashrc file under Windows  is found in /c/Users/username (after Git Bash is installed) - create it if is not there
# need to set $SOURCE variable and $TOOLS

alias cds='cd $SOURCE'
alias cdt='cd $TOOLS'
alias gt='git status'
alias showalias='grep ^alias ~/.bashrc'
alias addalias='vi ~/.bashrc'