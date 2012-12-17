#!/bin/bash

# MySql Installer
mysql_install()
{
  dependency_install 'mysql' 'packages'
  service mysqld restart
}
