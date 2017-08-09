#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

exit 0

rm -f $basedir/.git/index.lock

cd $basedir

patch -p1 < $patchdir/enable_gccgo_on_musl.patch
        
cd $basedir/toolchain/gcc/patches

ls | grep -oP "\d+\.\d+\.\d+$" | while read VER
do
    cp $patchdir/9*.patch $basedir/toolchain/gcc/patches/${VER}/
done
