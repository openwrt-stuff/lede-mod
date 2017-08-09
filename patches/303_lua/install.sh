#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
 
cd $basedir

patch -p1 < $patchdir/fix_lua_modules.patch

mkdir -p $basedir/package/feeds/packages/luasec/patches
cp $patchdir/001_luasec_replace_PIC_with_pic.patch $basedir/package/feeds/packages/luasec/patches

mkdir -p $basedir/package/feeds/packages/lua-xavante/patches
cp $patchdir/xavante_webdav_fix.patch $basedir/package/feeds/packages/lua-xavante/patches
