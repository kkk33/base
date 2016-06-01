#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll="ls -l --color"
PS1='[\u@\h \W]\$ '

export GIT=https://github.com
export LANG=en_US.UTF-8
export GDM_LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
#export GOROOT=/usr/share/go
#export GOPATH=~/workstation/go
export VPS=163.44.152.219
#export MYSQL=$GOPATH/src/kugou.com/mysql/kgproxy
#export PATH=$PATH:~/.vim/gotools
#export PATH=$PATH:$GOPATH/bin
#export probe=~/workstation/c/php-probe

alias ycmconfig="cp ~/.vim/tmp/.ycm_extra_conf.py ./"
alias php_extension_env="~/.myscript/php-extension-env.sh"

export ScriptModulePath=~/.myscript/module
export ScriptPath=~/.myscript/path.sh
source $ScriptPath

function AddToPath()
{
    new_path=""
    if [ -z $1]
    then
        new_path=$("pwd")
    else
        new_path=$1
    fi

    echo "export PATH=$new_path"':$PATH' >> $ScriptPath
    source $ScriptPath
}
