# PostgreSQL Installer
postgresql_install()
{
  dependency_install 'postgresql' 'packages'
  service postgresql restart
}
