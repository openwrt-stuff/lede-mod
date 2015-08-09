#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm -f $basedir/.git/index.lock

cd $basedir/package/network/utils/iproute2/
rm -rf ./*
git checkout .

cd $basedir/package/feeds/packages/mwan3/
rm -rf ./*
git checkout .
