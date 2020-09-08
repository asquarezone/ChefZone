name 'supermarketdemo'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures supermarketdemo'
long_description 'Installs/Configures supermarketdemo'
version '0.1.0'
chef_version '>= 14.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
 issues_url 'https://github.com/asquarezone/chefzone/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/asquarezone/chefzone/supermarketdemo'
depends 'mysql', '~> 8.7.3'
depends 'build-essential', '~> 8.2.1'
depends 'nodejs', '~> 7.0.1'