#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock
cd $basedir/package/kernel/linux/modules/
rm -f netsupport.mk
git checkout netsupport.mk
