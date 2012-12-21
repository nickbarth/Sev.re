#!/bin/bash

#######################################################
# Sev.re - Server Setups Made Simple
# To learn more about Sev.re visit http://info.sev.re/
#######################################################

# Download and run setup.
cd /tmp/
curl -L https://github.com/nickbarth/Sev.re/tarball/master | tar zx
cd `ls /tmp/* -t1d | head -1`
source ./setup.sh $@
