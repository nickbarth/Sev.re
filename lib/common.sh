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
    # yum install -y $package
  done
}

source_install()
{
  package=$1
  echo ">> +++ Installing $package from Source..."
  echo ">> +++ Installing $package Complete..."
}

asdfasdf()
{
  mkdir -p /tmp/source_files/
  wget https://github.com/nickbarth/NickBarth.ca/archive/master.tar.gz -O blah.tar.gz
  tar -zxvf blah.tar.gz -C blah
  exit
  wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p0.tar.gz
  tar xzvf ruby-1.9.3-p0.tar.gz
  cd ruby-1.9.3-p0
  ./configure --prefix=/usr/local --enable-shared --disable-install-doc --with-opt-dir=/usr/local/lib
  make
  make install
}
