#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm -f $basedir/.git/index.lock

cd $basedir/target/linux/ar71xx/image/
rm -f legacy.mk
git checkout legacy.mk
