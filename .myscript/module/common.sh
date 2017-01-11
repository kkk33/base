#!/bin/bash

function C()
{
cmd=$1

$cmd
if (( $? != 0 )) ; then
echo "[error]$cmd"
exit 
fi
}

function package_from_git()
{
dirname=$1
gitpath=$2

rm $dirname -rf
C "git clone $gitpath ./$dirname"


cd $dirname
version=`git log|head -n 1|awk '{print $2}'`
name=`basename $PWD`
packagename="$name($version).tar"

cd -
C "tar -vcf ./$packagename ./$dirname"
C "gzip ./$packagename"

rm $dirname -rf
}

