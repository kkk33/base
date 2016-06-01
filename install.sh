#!/bin/sh

backup_dir=/tmp/base_backup
backup_list=".vimrc .vim .myscript .bashrc"
root=$("pwd")
mkdir $backup_dir -pv

echo "backup"
echo "~ =======> $backup_dir"
cd ~
for v in $backup_list;do
    mv $v $backup_dir -R
done
cd -
cp recovery.sh $backup_dir/

echo "install"
echo "$root ======> ~"
for v in $backup_list;do
    cp $v ~/ -R
done
