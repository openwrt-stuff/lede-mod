#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
exit 0

rm -f $basedir/.git/index.lock

rm -f $basedir/package/network/utils/iptables/patches/650-custom_netfilter_match_modules.patch

rm -f $basedir/target/linux/generic/patches-*/650-custom_netfilter_match_modules.patch

cd $basedir/include/
rm -rf ./*
git checkout .

cd $basedir/package/kernel/linux/modules/
rm -rf ./*
git checkout .

cd $basedir/package/network/utils/iptables/
rm -rf ./*
git checkout .
