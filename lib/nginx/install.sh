#!/bin/bash

# Nginx Installer
nginx_install()
{
  dependency_install 'nginx' 'yum_package'
  package_install 'nginx'
  service nginx restart
}
