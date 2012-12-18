dependency_install()
{
  libpath="$1/dependencies"; shift
  for dep in $@
  do
    eval "source lib/$libpath/$dep.sh"
    eval "${dep}_install"
  done
}

package_install()
{
  eval "yum install -y $@"
}

source_install()
{
  path=$1; url=$2; config=$3
  wget $url -O temp.tar.gz
  tar xzvf temp.tar.gz -C /etc/
  rm -f temp.tar.gz
  cd "/etc/$path"
  ./configure $config
  make; make install
}

run_install()
{
  servername=$1; shift
  if [[ -z $@ ]]; then
    # Install defaults
    dependency_install 'common' 'setup' 'packages'
  else
    # Install select applications
    for application in $@
    do
      eval "${application}_install"
    done
  fi
}
