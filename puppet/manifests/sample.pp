Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }




class update {
  exec { 'apt-get update':
    command => 'apt-get update',
  }

  $sysPackages = [ "build-essential" ]
  package { $sysPackages:
    ensure => "installed",
    require => Exec['apt-get update'],
  }
}


class { 'jdk_oracle': 
    ensure => "installed",
}

class { 'tomcat':
  install_from => 'archive',
  version      => '8.0.15',
}


