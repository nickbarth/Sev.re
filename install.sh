#!/bin/bash

#######################################################
# Ser.ve - Server Setups Made Simple
# To learn more about Ser.ve visit http://info.ser.ve/
#######################################################

# Download and run setup.
cd /tmp/
curl -L https://github.com/nickbarth/Ser.ve/tarball/master | tar zx
cd `ls /tmp/* -t1d | head -1`
source ./setup.sh $@
