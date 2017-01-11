#!/bin/bash

backup_dir=/tmp/base_backup
backup_list=".vimrc .vim .myscript .bashrc"
root=$("pwd")

mkdir $backup_dir -pv

echo "recovery"
echo "$backup_dir =======> ~"
cd $backup_dir
mv $backup_list ~/ -Rf

