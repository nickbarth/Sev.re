# Names the server.
hostname_install()
{
  echo "Please enter the servers name:"
  read server
  hostname $server
  echo "Welcome to $server" > /etc/motd
}
