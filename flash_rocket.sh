#!/bin/bash

# This script must be run via source in the tools/prebuilts,
# else these absolute paths will not work

if [ ! -f "$1" ]; then
    echo "$1 doesn't exist"
    exit 1
fi

export PLATFORM=rocket-fpga-zcu102
export BASEDIR=${PWD}
export WRKDIR=$BASEDIR/rocketchip-h-extend/

xsct $BASEDIR/scripts/deploy.tcl $1
