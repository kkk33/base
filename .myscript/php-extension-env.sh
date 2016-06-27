#!/bin/sh

php_src='http://cn2.php.net/get/php-5.6.22.tar.xz/from/this/mirror'
root=$("pwd")

src=$root/php-src
env=$root/php-env
mkdir $src -pv
mkdir $env -pv

srcfile=php-5.6.22.tar.xz
srcpath=$src/$srcfile

if [ ! -f $srcpath]; then
wget $php_src -O $srcpath
fi

cd $src
tar -vxf $srcfile
cd php-5.6.22
./configure --enable-debug --enable-fpm --with-mysql --prefix="$env"
make && make install


