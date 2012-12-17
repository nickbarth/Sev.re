#!/bin/bash

source ./lib/common.sh
source ./lib/ruby/install.sh
source ./lib/nginx/install.sh
source ./lib/mysql/install.sh

ruby_install '1.9.3-p327'
nginx_install
mysql_install
