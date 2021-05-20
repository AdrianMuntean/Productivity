# .bashrc file under Windows  is found in /c/Users/username (after Git Bash is installed) - create it if is not there
# need to set $SOURCE, $TOOLS and $PROJECT vars

# vars
declare -A abbrev
abbrev=(["bp-dev"]="site-development" ["another-abbv"]="site-development"
["a-third-abbv-dev"]="site-development" ["b-dev"]="something-else")

# git
alias gt='git status'
alias gitlog='git log --all --graph --decorate --oneline --simplify-by-decoration'
alias gitshowunpusheddiff='git diff origin/master..HEAD'
alias gitshowunpushedcommits='git log origin/master..HEAD'
alias gitresethard='git reset --hard HEAD~1'
alias gitresetsoft='git reset --soft HEAD~1'
alias gitcm='git checkout master'
alias gitpom='git checkout master && git pull origin master'
alias gitcommitamend='git commit --amend'
alias gitpush='git push origin $(git branch --show-current)'
alias gitpushforce='git push -f origin $(git branch --show-current)'
gitrebase() {
       current_branch=$(git branch --show-current)
       git checkout master && git pull origin master
       git checkout $current_branch
       git rebase master
}
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
alias cdf='cd $PROJECT/frontend'
alias cdb='cd $PROJECT/backend'
alias gt='git status'
alias showalias='grep '"'"'^alias\|()'"'"' ~/.bashrc'
alias addalias='vi ~/.bashrc'
alias reloadrc='source ~/.bashrc'
alias cditermscripts='cd /Users/adrianmuntean/Library/Application\ Support/iTerm2/Scripts'

# work related
alias runserver='python manage.py runserver'
alias buildfrontend='yarn build:dev'
alias runfrontend='yarn start:dev'
alias showmigrationsclassifieds='python manage.py showmigrations | sed -n '/classifieds/,/contenttypes/p''
alias showmigrations='python manage.py showmigrations'
alias shell='python manage.py shell'
alias activateenv='source env/bin/activate'
checkFrontend() {
        cd ~/directory with code
        yarn format
        yarn lint:fix
        yarn verify
}
runquery() {
        # runs a query on a local postgres db called datab with a specific user
        psql -U $(whoami) -d explorer -c $1
}
connect_remote() {
        # this helps connect to a remote db
        # the url is something like postgres://username:longPassword@somehost.maybeamazon:5432/databasename
        host_split_first_part=$(echo $1 | cut -d'@' -f 1)
        host_split_second_part=$(echo $1 | cut -d'@' -f 2)
        host=$(echo $host_split_second_part | cut -d':' -f 1)
        echo "\e[1mhost: $host"
        port=$(echo $host_split_second_part | cut -d':' -f 2 | cut -d'/' -f 1)
        echo "\e[1mport: $port"
        user=$(echo $host_split_first_part | cut -d':' -f 2 | cut -c3-)
        echo "\e[1muser: $user"
        database=$(echo $host_split_second_part | cut -d':' -f 2 | cut -d'/' -f 2)
        echo "\e[1mdatabase: $database"
        password=$(echo $host_split_first_part | cut -d':' -f 3)
        echo "\n\e[1mpassword:  \e[31m$password\e[0m"

        psql -h $host -p $port -U $user $database
}
hg() {
    if [[ -v "abbrev[$1]" ]]
    then
        echo "${abbrev[$1]}"
        heroku config -a "${abbrev[$1]}" | grep $2;
    else
        echo "$1"
        heroku config -a "$1" | grep $2
    fi
}
