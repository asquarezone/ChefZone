name 'springbootexample'
maintainer 'Quality Thought'
maintainer_email 'qtdevops@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures springbootexample'
version '1.0.0'
chef_version '>= 16.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/springbootexample/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/springbootexample'

depends 'mysql', '~> 11.0.0'
depends 'nginx', '~> 12.0.7'