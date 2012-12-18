# Redis Installer
redis_install()
{
  package_install 'redis'
  service redis restart
}
