# Updates packages manager and names the server.
#
# $SERVER (optional) - Enviroment variable used to name the server.
setup_install()
{
  if [[ -z $SERVER ]]; then
    hostname $SERVER
    Echo "Welcome to $SERVER" > /etc/motd
  fi
  yum update -y
}
