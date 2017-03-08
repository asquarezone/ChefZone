name 'orangehrm'
maintainer 'ASquareZone'
maintainer_email 'shaik.khaja.ibrahim@live.in'
license 'all_rights'
description 'Installs/Configures orangehrm'
long_description 'Installs/Configures orangehrm using documentation@ http://linuxpitstop.com/install-orangehrm-on-ubuntu-15-04/'
version '0.1.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
 issues_url 'https://github.com/asquarezone/ChefZone/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
 source_url 'https://github.com/asquarezone/ChefZone' if respond_to?(:source_url)


 #dependencies
 depends 'mysql', '~> 8.0'
 depends 'archive', '~> 0.2.8'
 depends 'zipfile', '~> 0.1.0'
