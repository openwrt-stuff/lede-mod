#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm -f $basedir/.git/index.lock 

cd $basedir/package/feeds/packages/rtorrent
rm -rf ./*
git checkout . 

cd $basedir/package/feeds/packages/libtorrent
rm -rf ./*
git checkout . 
