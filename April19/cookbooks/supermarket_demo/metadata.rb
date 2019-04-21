name 'supermarket_demo'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures supermarket_demo'
long_description 'Installs/Configures supermarket_demo'
version '1.0.0'
chef_version '>= 13.0'

supports 'ubuntu', '>= 16.04'
supports 'redhat', '>= 6.0'


depends 'java', '~> 3.2.1'
depends 'mysql', '~> 8.5.1'
# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/supermarket_demo/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/supermarket_demo'
