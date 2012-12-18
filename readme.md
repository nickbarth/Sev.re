# Server Helper

Custom scripts create to help install applications and dependencies for
development or production servers. 

### Default Installation

Currently, the the installer defaults to installing Ruby, Nginx, and MySQL.

```terminal
curl -L https://raw.github.com/nickbarth/ServerHelper/install.sh | sh
```

### Custom Installation

Append the applications you would like installed to the end of the command using
process substitution. For example, to install Nginx Ruby and MySQL use the
following command.

```terminal
sh <(curl -L https://raw.github.com/nickbarth/ServerHelper/master/install.sh) nginx ruby mysql
```

### Notes

This application was designed for use with CentOS, RHEL, and Fedora.

### License
WTFPL &copy; 2012 Nick Barth
