yum_package_install()
{
  if [ $SYSTEM = "centos" ]; then
    cat >/etc/yum.repos.d/nginx.repo <<CONFIG
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=0
enabled=1
CONFIG

  elif [ $SYSTEM = "redhat" ]
    cat >/etc/yum.repos.d/nginx.repo <<CONFIG
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/rhel/\$releasever/\$basearch/
gpgcheck=0
enabled=1
CONFIG
  fi
}
