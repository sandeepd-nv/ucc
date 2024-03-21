#!/bin/bash

set -xeuo pipefail

./autogen.sh
./configure --prefix=$PREFIX --with-ucx=$PREFIX --with-cuda=$PREFIX
make -j $CPU_COUNT
make install
