# Oracle Virtualbox Yum repository for RHEL clients
class repo_virtualbox::virtualbox inherits repo_virtualbox {

  if $repo_virtualbox::enable_virtualbox {
    $enabled = 1
  } else {
    $enabled = 0
  }

  yumrepo { 'virtualbox':
    baseurl  => "${repourl}/${ostype}/${urlbit}/${::architecture}",
    descr    => "Oracle Linux / RHEL / CentOS - VirtualBox - EL${::operatingsystemmajrelease} - ${::architecture}",
    enabled  => "${enabled}",
    gpgcheck => '1',
    gpgkey   => "https://www.virtualbox.org/download/oracle_vbox.asc",
  }

}
