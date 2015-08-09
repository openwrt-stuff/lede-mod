#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm -f $basedir/.git/index.lock

cd $basedir/feeds/luci/modules/luci-base
rm -rf ./*
git checkout . 

cd $basedir/package/network/services/uhttpd
rm -rf ./*
git checkout . 
