#!/bin/bash

# Version: Build 397, built 2019-08-10T11:51:07Z using twee2 0.5.0 and SugarCube2 (2.27.0)

v=`cat build-ver.txt`
w=$(($v + 1))
echo $w > build-ver.txt

echo "::BuildInfo"
echo -n "Build $w built "
echo -n `date -ju "+%Y-%m-%dT%H:%M:%SZ"`
echo -n " using "
echo -n "tweego `tweego -v 2>&1 | grep 'version' | cut -d ' ' -f 3`"
echo -n " and "
echo -n "`tweego --list-formats 2>&1 | grep -- 'sugarcube-2' | cut -d ' ' -f 15,16`"
echo
