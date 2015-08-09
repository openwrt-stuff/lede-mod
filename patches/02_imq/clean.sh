#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm -f $basedir/.git/index.lock

cd $basedir/include
rm -f netfilter.mk
git checkout netfilter.mk 

cd $basedir/package/kernel/linux/modules/
rm -f netfilter.mk
git checkout netfilter.mk 

cd $basedir/package/network/utils/iptables/
rm -f Makefile
git checkout Makefile
