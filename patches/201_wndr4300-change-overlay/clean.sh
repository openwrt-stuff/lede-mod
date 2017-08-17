#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock

cd $basedir/target/linux/ar71xx/image/
rm -f legacy.mk
git checkout legacy.mk
