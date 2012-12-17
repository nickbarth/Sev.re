dependency_install()
{
  echo ">> + Installing Dependencies..."
  libpath="$1/dependencies"
  shift
  for dep in $@
  do
    echo ">> ++ Installing $dep..."
    eval "source lib/$libpath/$dep.sh"
    eval "${dep}_install"
  done
  echo ">> + Dependencies Installed."
}

package_install()
{
  for package in $@
  do
    echo ">> +++ Installing $package..."
    eval "yum install -y $package"
  done
}

source_install()
{
  url=$1
  config=$2
  echo ">> +++ Installing $package from Source..."
  wget $url -O temp.tar.gz
  tar xzvf temp.tar.gz -C /etc/
  rm -f temp.tar.gz
  cd `ls /etc/* -t1d | head -1`
  ./configure $config
  make
  make install
  echo ">> +++ Installing $package Complete..."
}

run_setup()
{
  servername=$1
  hostname $servername
  echo "Welcome to $servername" > /etc/motd
  package_install 'screen' 'curl' 'wget'
  yum update -y
}

run_install()
{
  servername=$1
  run_setup $servername
  ruby_install '1.9.3-p327'
  nginx_install
  mysql_install
}
