name 'lampserver'
maintainer 'shaik khaja ibrahim'
maintainer_email 'qtdevops@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures lampserver'
version '1.0.1'
chef_version '>= 15.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/lampserver/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/lampserver'
depends 'mysql', '~> 10.1.3'

supports 'ubuntu', '>= 18.04'