name 'qthms-db'
maintainer 'Quality Thought'
maintainer_email 'qtdevops@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures qthms-db'
long_description 'Installs/Configures qthms-db'
version '1.0.0'
chef_version '>= 14.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/asquarezone/Chefzone/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/asquarezone/Chefzone'

supports 'ubuntu'

depends 'postgresql', '~> 8.0.0'

