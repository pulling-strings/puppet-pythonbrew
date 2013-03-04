# sets up pythonbrew
class pythonbrew($user='root'){

  exec {'pythonbrew install':
    command => 'curl -kL http://xrl.us/pythonbrewinstall | sudo bash',
    user    => $user,
    unless  => "/bin/bash -l -c 'which pythonbrew'",
    path    => ['/bin/','/usr/bin/'],
    require => Package['curl']
  }

  if !defined(Package['curl']){
    package {'curl':
      ensure => installed
    }
  }
}
