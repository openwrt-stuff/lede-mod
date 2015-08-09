#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm -f $basedir/.git/index.lock

cd $basedir/package/feeds/packages/nfs-kernel-server/
rm -f Makefile
git checkout Makefile 
