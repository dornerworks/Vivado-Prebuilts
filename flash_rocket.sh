#!/bin/bash

# This script must be run via source in the tools/prebuilts,
# else these absolute paths will not work

if [ ! -f "$1" ]; then
    echo "$1 doesn't exist"
    exit 1
fi

export BAO_DEMOS=${PWD}/../bao-demos/
export PLATFORM=rocket-fpga-zcu102
export VIVADO_CORES=1
export BAO_DEMOS_WRKDIR_PLAT=${PWD}/rocketchip-h-extend/

xsct $BAO_DEMOS/platforms/$PLATFORM/scripts/deploy.tcl $1
