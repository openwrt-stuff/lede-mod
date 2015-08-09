#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm -f $basedir/.git/index.lock

cd $basedir/feeds/luci/applications/luci-app-aria2
rm -rf ./*
git checkout . 

cd $basedir/feeds/luci/applications/luci-app-hd-idle
rm -rf ./*
git checkout . 

cd $basedir/feeds/luci/applications/luci-app-minidlna
rm -rf ./*
git checkout . 

cd $basedir/feeds/luci/applications/luci-app-samba
rm -rf ./*
git checkout . 


cd $basedir/feeds/luci/applications/luci-app-transmission
rm -rf ./*
git checkout . 


cd $basedir/feeds/luci/applications/luci-app-watchcat
rm -rf ./*
git checkout . 
