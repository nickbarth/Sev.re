#!/bin/bash

# MySql Installer
mysql_install()
{
  dependency_install 'mysql' 'packages'
  mysql_secure_installation
  service mysqld restart
}
