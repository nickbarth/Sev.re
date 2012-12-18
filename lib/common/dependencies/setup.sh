setup_install()
{
  hostname $servername
  echo "Welcome to $servername" > /etc/motd
  yum update -y
}
