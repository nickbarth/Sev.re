#!/bin/bash

#######################################################
# Sev.re - Server setups in one line.
# To learn more about Sev.re visit http://info.sev.re/
#######################################################

# Download and run setup.
curl -L https://github.com/nickbarth/Sev.re/tarball/master | tar zx
cd `ls /tmp/* -t1d | grep Sev.re | head -1`
source ./setup.sh $@
