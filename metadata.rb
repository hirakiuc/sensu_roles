name             'sensu_roles'
maintainer       'hirakiuc'
maintainer_email 'hirakiuc@gmail.com'
license          'All rights reserved'
description      'Define sensu_monitor and sensu_clients recipes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w(
  centos
).each do |os|
  supports os
end

depends 'sensu'
