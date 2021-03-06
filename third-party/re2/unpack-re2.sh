#!/usr/bin/env bash

set -e

if [ -d re2 ]
then
    echo RE2 already unpacked
else
    echo Unpacking RE2
    tar xzf re2-20140111.tgz
    mv re2-cc56ba02d9d2bdafa614ad5ebf564dde287625bb re2
    echo Applying Patches
    cd re2
    patch -p1 < ../hg_diff_g.patch
    cat ../Makefile.install-static >> Makefile
    echo Copying file_strings.h and file_strings.cc
    cp ../file_strings.h re2/
    cp ../file_strings.cc re2/
fi
