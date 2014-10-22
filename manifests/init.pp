# == Class: repo_virtualbox
#
# Configures the Oracle Virtualbox Yum repository config
# on Enterprise Linux (RHEL, CentOS) clients
#
# === Parameters:
#
# $repourl::                       The base repo URL, if not specified defaults to the
#                                  Oracle Virtualbox URL
#                                  
# $enable_virtualbox::             Enable the Virtualbox Repo
#                                  type:boolean
#
# === Usage:
# * Simple usage:
#
#  include repo_virtualbox
#
# * Advanced usage:
#
#   class {'repo_virtualbox':
#     repourl              => 'http://myrepo/virtualbox',
#     enable_virtualbox    => true,
#   }
#
# * Alternate usage via hiera YAML:
#
#   repo_virtualbox::repourl: 'http://myrepo/virtualbox'
#   repo_virtualbox::enable_virtualbox: true
#
class repo_virtualbox (
    $repourl                       = $repo_virtualbox::params::repourl,
    $enable_virtualbox             = $repo_virtualbox::params::enable_virtualbox,
  ) inherits repo_virtualbox::params {

  validate_string($repourl)
  validate_bool($enable_virtualbox)
  
  if $::osfamily == 'RedHat' {
    include repo_virtualbox::virtualbox
    
    #file { "/etc/yum.repos.d/virtualbox.repo": ensure => absent, }
    
  } else {
      notice ("Your operating system ${::operatingsystem} does not need the Oracle Virtualbox repository")
  }

}
