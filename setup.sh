#!/bin/bash
pkg install -y automake clang vim
git clone https://github.com/decryp2kanon/sugarmaker.git ../
cd ../sugarmaker
./autogen.sh
./configure CFLAGS="-Wall -O2 -fomit-frame-pointer" CXXFLAGS="$CFLAGS -std=gnu++11"
make
HOSTNAME=$(getprop net.hostname)
echo "./sugarmaker -o stratum+tcp://stratum-asia.rplant.xyz:7042 -u sugar1qvartnefrf4nwnve0fh23harxtnl34lpcv06gnw.${HOSTNAME} -t 2" > autominer.sh
chmod a+x autominer.sh
