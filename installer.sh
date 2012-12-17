#!/bin/bash

source ./lib/common.sh
source ./lib/ruby/install.sh
source ./lib/nginx/install.sh
source ./lib/mysql/install.sh

run_install 'SERVERNAME'
