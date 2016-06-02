#!/bin/sh

source=https://openresty.org/download/ngx_openresty-1.9.7.2.tar.gz

root=$("pwd")/openresty-env
mkdir $root

#download
tmpfile=/tmp/ngx_openresty.tar.gz
if [ ! -f $tmpfile ];
then
    wget $source -O $tmpfile ||return 1
fi

#unzip
tar -vxf $tmpfile 

#make
cd ngx_openresty-1.9.7.2/
./configure --prefix=$root
make && make install

#AddToPath
source ~/.bashrc
AddToPath $root/nginx/sbin
