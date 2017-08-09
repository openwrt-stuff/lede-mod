#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock
cd $basedir/feeds/luci
rm -f ./luci.mk
git checkout ./luci.mk

rm_lock
cd $basedir/feeds/luci/modules/luci-base
rm -rf ./*
git checkout . 

rm_lock
cd $basedir/package/network/services/uhttpd
rm -rf ./*
git checkout . 
