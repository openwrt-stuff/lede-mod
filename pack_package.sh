#!/bin/sh
BASEDIR=$(cd `dirname $0`;pwd)
BUILDROOT=$(cd `dirname $0`;cd ..;pwd)

cd  $BUILDROOT

pack() {
    rm -rf "$BUILDROOT/bin/targets/$1/$2/core"
    cp -r "$BUILDROOT/bin/targets/$1/$2/packages" "$BUILDROOT/bin/targets/$1/$2/core"
    rm -f "$BUILDROOT/bin/targets/$1/$2/$1-$2-$3.txz"
    cd "$BUILDROOT/bin/packages/$3"
    tar cpf "$BUILDROOT/bin/targets/$1/$2/$1-$2-$3.tar" base luci packages routing telephony 
    cd "$BUILDROOT/bin/targets/$1/$2/"
    tar --append --file="$BUILDROOT/bin/targets/$1/$2/$1-$2-$3.tar" core
}

pack apm821xx nand powerpc_464fp
pack ar71xx nand mips_24kc
