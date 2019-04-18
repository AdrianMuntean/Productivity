# .bashrc file under Windows  is found in /c/Users/username (after Git Bash is installed) - create it if is not there
# need to set $SOURCE variable and $TOOLS

# git
alias gt='git status'
alias gitlog='git log --oneline'
alias showunpusheddiff='git diff origin/master..HEAD'
alias showunpushedcommits='git log origin/master..HEAD'
alias gitresethard='git reset --hard HEAD~1'
alias gitresetsoft='git reset --soft HEAD~1'

# general navigation and productivity
alias cds='cd $SOURCE'
alias cdt='cd $TOOLS'
alias gt='git status'
alias showalias='grep ^alias ~/.bashrc'
alias addalias='vi ~/.bashrc'
alias reloadrc='source ~/.bashrc'

# work specific
alias runserver='python manage.py runserver'
alias buildfrontend='yarn build:dev'
alias runfrontend='yarn start:dev'
alias showmigrationsclassifieds='python manage.py showmigrations | sed -n '/classifieds/,/contenttypes/p''
alias showmigrations='python manage.py showmigrations'
alias activateenv='source env/bin/activate'
