# Runs select application installations if specified.
#
# $@ - Array of applications installations to run.
run_install()
{
  SYSTEM=$(cat /etc/redhat-release | awk '{print tolower($1)}')
  DIRECTORY=$PWD
  if [[ -z $@ ]]; then
    # Applications are required to be specified
    echo -e "\terror: applications packages not specified."
    echo -e "\tusage: ./setup.sh [package]"
    exit 1
  else
    # Install common unless flag is set.
    if [[ $@ != *-common* ]]; then
      common_install
    fi
    # Install select applications.
    for application in $@
    do
      eval "${application}_install"
    done
  fi
}

# Installs applications using the default package manager.
#
# $@ - An array of packages.
package_install()
{
  eval "yum install -y $@"
}

# Adds an executable path to the bashrc.
#
# $1 - Name of application.
# $2 - A path containing executables.
exec_path()
{
  name=$1; executable_path=$2
  echo -e "\n# $name exec path"          >> ~/.bashrc
  echo -e "PATH=\$PATH:$executable_path" >> ~/.bashrc
  echo -e "export PATH"                  >> ~/.bashrc
}

# Makes application from source.
#
# path - Directory to cd; make too.
# url - URL of tarball package.
# config (optional) - Configuration flags for configure.
source_install()
{
  name=$1; url=$2; config=$3
  wget $url -O temp.tar.gz
  tar xzvf temp.tar.gz -C /etc/
  rm -f temp.tar.gz
  cd "/etc/$name"
  ./configure $config
  make; make install
  cd $DIRECTORY
}

# Installs an application using its binaries.
#
# path - Directory to cd; make too.
# url - URL of tarball package.
source_install()
{
  name=$1; url=$2
  wget $url -O temp.tar.gz
  tar xzvf temp.tar.gz -C /etc/
  rm -f temp.tar.gz
  exec_path $name "/etc/$name/bin"
}

# Runs a includes scripts in package subdirectories and runs them.
#
# $1 - Name of current folder.
# $@ - Array of scripts in the dependencies subdirectory.
#
# Example
#
#   dependency_install 'ruby' 'packages'
#
#   This will include the ruby/packages.sh script and run the packages_install
#   function.
#
dependency_install()
{
  libpath="$1/dependencies"; shift
  for dependency in $@
  do
    eval "source lib/$libpath/$dependency.sh"
    eval "${dependency}_install"
  done
}
