# repo_virtualbox

# About
Configures the Oracle Virtualbox Yum repository config
on Enterprise Linux (RHEL, CentOS) clients

"VirtualBox is a powerful x86 and AMD64/Intel64 virtualization product for
enterprise as well as home use. Not only is VirtualBox an extremely feature
rich, high performance product for enterprise customers, it is also the only
professional solution that is freely available as Open Source Software under
the terms of the GNU General Public License (GPL) version 2.
See "About VirtualBox" for an introduction."

https://www.virtualbox.org/wiki/VirtualBox

## New in 1.0.0
  * Initial release

# Testing
  * This was tested on CentOS 5, 6 and 7 clients
  * Tested using Puppet 3.6.2

# Usage
  * Simple usage:
```
include repo_virtualbox
```
  * Advanced usage:
```
class {'repo_virtualbox':
  repourl           => 'http://myrepo/virtualbox',
  enable_virtualbox => true,
}
```
  * Alternate usage via hiera YAML:
```
repo_virtualbox::repourl: 'http://myrepo/virtualbox'
repo_virtualbox::enable_virtualbox: true
```
# License
Apache Software License 2.0
