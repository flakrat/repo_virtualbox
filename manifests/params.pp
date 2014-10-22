# Optional parameters in setting up Virtualbox Yum repository
# baseurl=http://download.virtualbox.org/virtualbox/rpm/el/$releasever/$basearch
class repo_virtualbox::params {
  $enable_virtualbox         = true
  $ostype                    = 'el'
  $urlbit                    = "${::operatingsystemmajrelease}"
  $repourl                   = "http://download.virtualbox.org/virtualbox/rpm"
}
