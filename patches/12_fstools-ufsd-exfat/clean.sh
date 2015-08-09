#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm -f $basedir/.git/index.lock

cd $basedir/package/system/fstools/
rm -rf ./*
git checkout .
