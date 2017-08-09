#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock
cd $basedir/package/feeds/packages/rtorrent
rm -rf ./*
git checkout . 

rm_lock
cd $basedir/package/feeds/packages/libtorrent
rm -rf ./*
git checkout . 
