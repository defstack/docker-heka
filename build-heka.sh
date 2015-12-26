#!/bin/bash

SOURCE=/source
BUILD_DIR=$SOURCE/build
FINAL_DIR=$SOURCE/final
HEKA_SOURCE=$BUILD_DIR/heka

export GOPATH=${SOURCE}/go

cd $BUILD_DIR
git clone https://github.com/mozilla-services/heka.git

cd $HEKA_SOURCE && source build.sh
cd $HEKA_SOURCE && source env.sh
cd build && make package
cp -f -v heka-0_11_0-linux-amd64.tar.gz $FINAL_DIR