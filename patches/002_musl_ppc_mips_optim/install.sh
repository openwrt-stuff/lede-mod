#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

exit 0

rm -f $basedir/.git/index.lock

cd $basedir
cp $patchdir/9*.patch $basedir/toolchain/musl/patches/
