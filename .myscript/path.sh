#!/bin/sh

for v in $ScriptModulePath/*;do
    source "$v"
done

export PATH=/home/k/workstation/c/php-probe/php-env/bin:$PATH
export PATH=/home/k/workstation/c/php-probe/php-env/sbin:$PATH
