#!/bin/sh

function binaryOperation()
{
    #$1 op
    #$2 src
    #$3 dst
    #$4 list
    cmd=$1
    src=$2
    dst=$3
    shift
    shift
    shift
    for v in $@;do
        echo "$cmd $src/$v $dst/$v"
        $cmd $src/$v $dst/$v
    done
}

backup_dir=/tmp/base_backup
backup_list='.vimrc .bashrc'
backup_list_dir='.vim .myscript'
root=$("pwd")
mkdir $backup_dir -pv

echo "backup"
echo "~ =======> $backup_dir"
binaryOperation "mv" ~ $backup_dir $backup_list
binaryOperation "mv" ~ $backup_dir $backup_list_dir
cp recovery.sh $backup_dir/

echo "install"
echo "$root ======> ~"
binaryOperation "cp" $root ~ $backup_list
binaryOperation "cp -R" $root ~ $backup_list_dir
