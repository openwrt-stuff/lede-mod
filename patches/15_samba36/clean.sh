#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm -f $basedir/.git/index.lock

cd $basedir/package/network/services/samba36
rm -rf ./*
git checkout . 

cd $basedir/feeds/luci/applications/luci-app-samba/luasrc/model/cbi
rm -rf ./*
git checkout . 
