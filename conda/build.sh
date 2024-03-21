#!/bin/bash

set -xeuo pipefail

./autogen.sh
./configure --prefix=$PREFIX --with-ucx=$PREFIX --with-cuda=$PREFIX
make install -j $CPU_COUNT