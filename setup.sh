#!/bin/bash

# Include all libraries.
source ./lib/common/install.sh
source ./lib/ruby/install.sh
source ./lib/nginx/install.sh
source ./lib/mysql/install.sh
source ./lib/common/init.sh

run_install $@
