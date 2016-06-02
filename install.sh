#!/bin/sh

function binaryOperation()
{
    #$1 op
    #$2 src
    #$3 dst
    #$4 list
    for v in $4;do
        $1 $2/$v $3/$v
    done
}
backup_dir=/tmp/base_backup
backup_list=".vimrc .bashrc"
backup_list_dir=".vim .myscript"
root=$("pwd")
mkdir $backup_dir -pv

echo "backup"
echo "~ =======> $backup_dir"
binaryOperation "cp" ~ $backup_dir $backup_list
binaryOperation "cp -R" ~ $backup_dir $backup_list_dir
cp recovery.sh $backup_dir/

echo "install"
echo "$root ======> ~"
binaryOperation "cp" $root ~ $backup_list
binaryOperation "cp -R" $root ~ $backup_list_dir
