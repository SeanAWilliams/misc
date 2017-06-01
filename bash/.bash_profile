eval export PATH="/Users/seanw/.rbenv/shims:${PATH}"
eval "$(rbenv init -)"
export RBENV_SHELL=bash
#source '/usr/local/Cellar/rbenv/1.0.0/libexec/../completions/rbenv.bash'
source ~/.git-prompt.sh
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}

[[ -s "/Users/seanw/.gvm/scripts/gvm" ]] && source "/Users/seanw/.gvm/scripts/gvm"

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# Prompt
#PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]$(__git_ps1)\$ ' 

PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]$git_branch\$ ' 

# aliases
alias cd..="cd .."
alias l="ls -al"
alias lp="ls -p"
alias h=history
alias ll="ls -alhs"
alias vim="/usr/local/bin/vim"
alias docker-delete-all="docker stop \$(docker ps -a -q); docker rm \$(docker ps -a -q)"
alias dcom="docker-compose"
alias pull="git pull"
alias refresh="docker-compose kill; docker-compose rm -f; docker-compose up -d"
alias ssh="ssh -i ~/identity-v16-dev.pem -l ubuntu "
alias gco="git checkout"
alias dockerssh=dockerssh
alias rdelete=rdelete
alias javatag="ctags -R --languages=java --exclude=.git --exclude=log ."
alias ctags="`brew --prefix`/bin/ctags"


bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

function sshin() {
        ssh -i ~/identity-v16-dev.pem ubuntu@$1.mia.ucloud.int
            if [ $? -ne 0  ] ; then
                        ssh -i ~/identity-v16-dev.pem ubuntu@$1
                        if [ $? -ne 0 ] ; then
                            ssh -i ~/identity-dmz.pem ubuntu@$1.mia.ucloud.int
                        fi
            fi

}
function dockerssh() {
        docker exec -it $1 bash

}

function rdelete {
    OPENAM="/s/misc/openam"
    if [ ! -d "$OPENAM" ]; then
        echo "Could not find accountstore ci folder $OPENAM"
        return
    fi

    while true
    do
    echo "Type deployments to delete:"
        read input
        deployment=$(echo $input | awk '{print $1;}')
        (cd $OPENAM && rake deployment:delete[$deployment] &)
    done
}

# Git autocomplete
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# the "kp" alias ("que pasa"), in honor of tony p.
alias kp="ps auxwww"

alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"

# ant/java stuff
alias ant=/opt/local/bin/ant
export HOSTNAME=alsMac
export ANT_HOST_NAME=alsMac
export ANT_HOME=/opt/local/share/java/apache-ant
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export TOMCAT_HOME=/Users/al/tomcat-6.0.16
PATH=${JAVA_HOME}/bin:${PATH}:/usr/local/mysql/bin:/usr/local/ant-1.6.5/bin

# jruby
export JRUBY_HOME=/Users/al/Apps/jruby-0.9.2
PATH=${PATH}:/Users/al/Apps/jruby-0.9.2/bin

# maven 2.0.8 config
export M2_HOME=/Users/al/Local/maven-2.0.8
export M2=${M2_HOME}/bin
PATH=${M2}:${PATH}:

# general path munging
PATH=${PATH}:~/bin
PATH=${PATH}:/usr/local/bin

# postgres
export PATH=${PATH}:/usr/local/pgsql/bin
export PGDATA=/usr/local/pgsql/data

# gopath
export GOPATH=/s/go
# GOLANG stuff
PATH=${PATH}:/s/go/bin 

# git branch info
source ~/.git-prompt.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

#-----#
# X11 #
#-----#
export DISPLAY=:0.0
PATH=${PATH}:/usr/X11R6/bin

#--------#
# colors #
#--------#

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function

# Set idenityt env variables
source ~/identity.sh

