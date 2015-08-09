#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm -f $basedir/.git/index.lock

cd $basedir/package/feeds/packages/luasec
rm -rf ./*
git checkout . 

cd $basedir/package/feeds/packages/luasocket
rm -rf ./*
git checkout . 

cd $basedir/package/feeds/packages/lua-xavante
rm -rf ./*
git checkout . 
