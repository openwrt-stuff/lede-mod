#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock
cd $basedir/feeds/packages/net/autossh/files/
rm -f ./autossh.config
git checkout autossh.config
