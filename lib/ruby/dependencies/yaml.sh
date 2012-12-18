yaml_install()
{
  yaml_version=${1:-'0.1.4.'}
  source_install "yaml-$yaml_version" \
                 "http://pyyaml.org/download/libyaml/yaml-$yaml_version.tar.gz"
}
