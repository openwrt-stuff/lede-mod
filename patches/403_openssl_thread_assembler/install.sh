#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
 
cd $basedir

patch -p1 < $patchdir/enable-openssl-thread.patch

cp -f $patchdir/110-optimize-for-size.patch package/libs/openssl/patches/
