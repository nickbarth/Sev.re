# Sev.re

[Sev.re](http://deux.sev.re) is a command tool to do server setups in one line.

### How does it work?

First, pick a few packages you would like to install and pipe them to your
shell. Like so:

```terminal
sh <(curl -L sev.re) ruby mongodb nginx
```

All clear. Your server will be ready to go.

### Package Listings

Here are the current packages that are avaliable to install and use.
Any marked as *Latest* will grab the latest version via your package manager.

- Ruby (1.9.3-p327)
- JRuby (1.7.1)
- NodeJS (v0.8.16)
- MongoDB (2.2.2)
- MySQL (Lastest)
- Nginx (Lastest)
- Postgresql (Lastest)
- Redis (Lastest)

### Custom Installation

Here are some common server setups. To customize your server setup just
append or remove the name of package as an argument.

##### Ruby MySQL Apache

```terminal
sh <(curl -L sev.re) ruby mysql apache
```

##### NodeJS MongoDB Nginx

```terminal
sh <(curl -L sev.re) nodejs mongodb nginx
```

##### JRuby Redis PostgreSQL Nginx

```terminal
sh <(curl -L sev.re) jruby redis posgresql nginx
```

### Requirements

This application was designed for use with 64-Bit CentOS, RHEL, and Fedora.

### Final Notes

Common build tools such as Make and GCC as well as Git, and screen will be installed by default.
To circumvent this use the `-common` argument or to circumvent the compadibility check use 
`-compad`. Feedback, Pushes, and Forks are welcome. :octocat:

### License
MIT &copy; 2012 Nick Barth

With dedication to the French [rivers](http://en.wikipedia.org/wiki/Deux-Sèvres). :fish:
