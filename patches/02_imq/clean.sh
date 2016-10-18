#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock
cd $basedir/include
rm -f netfilter.mk
git checkout netfilter.mk 

rm_lock
cd $basedir/package/kernel/linux/modules/
rm -f netfilter.mk
git checkout netfilter.mk 

rm_lock
cd $basedir/package/network/utils/iptables/
rm -f Makefile
git checkout Makefile
