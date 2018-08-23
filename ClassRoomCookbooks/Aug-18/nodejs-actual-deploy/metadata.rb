name 'nodejs-deploy'
maintainer 'khaja'
maintainer_email 'qtdevops@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures nodejs deployment'
long_description 'Installs/Configures nodejs deployment as mentioned in  https://www.digitalocean.com/community/tutorials/how-to-set-up-a-node-js-application-for-production-on-ubuntu-14-04'
version '1.0.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/nodejs-deploy/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/nodejs-deploy'

#dependencies
depends 'nodejs', '~> 5.0.0'
depends 'pm2', '~> 0.7.4'
depends 'nginx', '~> 8.1.5'
