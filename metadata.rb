name             'cookbook-readthedocs'
maintainer       'Dan Tracy'
maintainer_email 'djt5019@gmail.com'
license          'MIT'
description      'Installs and configures a Read the Docs instance'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'nginx'
depends 'python'
depends 'supervisor'
optional 'git'