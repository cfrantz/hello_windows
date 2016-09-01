#!/bin/bash

for F in $(ls ~/mxe/bin/ | grep -v gcc | sed -e "s/.*-//g")
do
    sed -e "s/TOOL/$F/g" i686-w64-mingw.shared >i686-w64-mingw.shared-$F
done
