#/bin/bash

echo "Confguring puppet module on guest"

puppet_environment="puppet"  
puppet_environment_path_on_guest="/etc/puppetlabs/code/environments/$puppet_environment"
module_path_on_guest="$puppet_environment_path_on_guest/modules"


echo "Creating directory $puppet_environment_path_on_guest if it does not exist"
if [ ! -d $puppet_environment_path_on_guest ]
then
    mkdir $puppet_environment_path_on_guest
fi

echo "Creating directory $module_path_on_guest if it does not exist"
if [ ! -d $module_path_on_guest ]
then
  mkdir $module_path_on_guest
fi

if [ ! -d $module_path_on_guest/apt ]
then
  echo "puppetlabs-apt is not installed, installing..."
  puppet module install puppetlabs-apt --environment=$puppet_environment
  echo "puppetlabs-apt already installed"
fi

if [ ! -d $module_path_on_guest/archive ]
then
  echo "puppetlabs-archive is not installed, installing..."
  puppet module install puppet-archive --environment=$puppet_environment
  echo "puppetlabs-archive already installed"
fi

if [ ! -d $module_path_on_guest/java ]
then
  echo "puppet module tylerwalts-jdk_oracle is not installed, installing..."
  puppet module install tylerwalts-jdk_oracle --environment=$puppet_environment
  echo "puppet module tylerwalts-jdk_oracle already installed"
fi

if [ ! -d $module_path_on_guest/tomcat ]
then
  echo "puppet module aco-tomcat is not installed, installing..."
  puppet module install aco-tomcat --environment=$puppet_environment
  echo "puppet module aco-tomcat already installed"
fi



