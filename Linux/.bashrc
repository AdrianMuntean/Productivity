# .bashrc file under Windows  is found in /c/Users/username (after Git Bash is installed) - create it if is not there
# need to set $SOURCE variable and $TOOLS

# git
alias gt='git status'
alias gitlog='git log --oneline'
alias showunpusheddiff='git diff origin/master..HEAD'
alias showunpushedcommits='git log origin/master..HEAD'
alias gitresethard='git reset --hard HEAD~1'
alias gitresetsoft='git reset --soft HEAD~1'
alias gitcm='git checkout master'
alias gitpom='git pull origin master'
gitswb() { # git set working branch
        export WORKING_BRANCH="$1"
        echo "$1 is now set as WORKING_BRANCH"
        if [ `git branch --list $1` ]
        then
                echo "Will checkout to an existing branch"
                git checkout $1
        else
                echo "This branch does not exist, will create a new one"
                git checkout -b $1
        fi
}
gitcwb() { # git checkout working branch
        if [ -z ${WORKING_BRANCH+x} ]; then
                echo "Working branch is not set, could not checkout"
        else
                echo "Checking out to $WORKING_BRANCH"
                git checkout $WORKING_BRANCH
        fi
}

# general navigation and productivity
alias cds='cd $SOURCE'
alias cdt='cd $TOOLS'
alias gt='git status'
alias showalias='grep '"'"'^alias\|()'"'"' ~/.bashrc'
alias addalias='vi ~/.bashrc'
alias reloadrc='source ~/.bashrc'
alias cditermscripts='cd /Users/adrianmuntean/Library/Application\ Support/iTerm2/Scripts'

# work specific
alias runserver='python manage.py runserver'
alias buildfrontend='yarn build:dev'
alias runfrontend='yarn start:dev'
alias showmigrationsclassifieds='python manage.py showmigrations | sed -n '/classifieds/,/contenttypes/p''
alias showmigrations='python manage.py showmigrations'
alias activateenv='source env/bin/activate'
checkFrontend() {
        cd ~/directory with code
        yarn format
        yarn lint:fix
        yarn verify
}