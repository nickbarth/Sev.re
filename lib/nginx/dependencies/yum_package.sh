yum_package_install()
{
  cat >/etc/yum.repos.d/nginx.repo <<CONFIG
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=0
enabled=1
CONFIG
}
