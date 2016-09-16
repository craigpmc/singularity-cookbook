name             'singularity'
maintainer       'EverTrue'
maintainer_email 'devops@evertrue.com'
license          'All rights reserved'
description      'Installs Singularity and its dependencies (mesos, zk, mysql)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '11.0.0'
supports         'ubuntu'

depends 'apt'
depends 'build-essential'
depends 'mysql', '~> 6.0'
depends 'git'
depends 'mysql2_chef_gem'
depends 'database'
depends 'hostsfile'
depends 'java'
depends 'et_mesos', '~> 6.0'
depends 'openssl', '>= 4.0'
depends 'logrotate'
depends 'maven', '>= 2.2'
