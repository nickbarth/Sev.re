# Server Helper

Custom scripts create to help install applications and dependencies for
development or production servers. 

### Package Listings

Here are the current packages that are avaliable to install and use.
Any marked as *Latest* will grab the latest version via your package manager.

- Ruby (1.9.3-p327)
- NodeJS (v0.8.16)
- MongoDB (2.2.2)
- MySQL (Lastest)
- Nginx (Lastest)
- Postgresql (Lastest)
- Redis (Lastest)

### Custom Installation

Here are some common server setups. To customize your server setup just
append or remove the name of package as an argument.

##### Ruby MySQL Nginx

```terminal
sh <(curl -L https://raw.github.com/nickbarth/ServerHelper/master/install.sh) ruby mysql nginx
```

##### NodeJS MongoDB Nginx

```terminal
sh <(curl -L https://raw.github.com/nickbarth/ServerHelper/master/install.sh) nodejs mongodb nginx
```

##### Ruby Redis PosgreSQL Nginx

```terminal
sh <(curl -L https://raw.github.com/nickbarth/ServerHelper/master/install.sh) ruby redis posgresql nginx
```

### Notes

This application was designed for use with 64-Bit CentOS, RHEL, and Fedora.

### License
MIT &copy; 2012 Nick Barth
