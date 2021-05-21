#!/bin/bash
pkg install -y wget unzip
wget https://github.com/decryp2kanon/sugarmaker/releases/download/v2.5.0-sugar4/sugarmaker-v2.5.0-sugar4-aarch64.zip
unzip sugarmaker-v2.5.0-sugar4-aarch64.zip
cd sugarmaker-v2.5.0-sugar4-aarch64
HOSTNAME=$(getprop net.hostname)
echo "./sugarmaker -o stratum+tcp://stratum-asia.rplant.xyz:7042 -u sugar1qvartnefrf4nwnve0fh23harxtnl34lpcv06gnw.${HOSTNAME} -t 2" > autominer.sh
echo "#./sugarmaker -o stratum+tcp://51.79.177.216:7042 -u sugar1qvartnefrf4nwnve0fh23harxtnl34lpcv06gnw.${HOSTNAME} -t 2" >> autominer.sh
chmod a+x autominer.sh
