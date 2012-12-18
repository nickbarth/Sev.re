#!/bin/bash

# Include all libraries.
for directory in ./lib/*/; do
  eval "source $directory/install.sh"
done
source ./lib/common/init.sh

run_install $@
