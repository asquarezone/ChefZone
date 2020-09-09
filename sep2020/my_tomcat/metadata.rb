name 'my_tomcat'
maintainer 'Khaja'
maintainer_email 'qtdevops@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures tomcat 9'
long_description 'Installs/Configures tomcat 9'
version '1.0.0'
chef_version '>= 14.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/my_tomcat/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/my_tomcat'

%w(redhat centos ).each  do |el|
    supports el, '>=6.0'
end

supports 'ubuntu', '>=16.04'


depends 'java', '~> 8.3.2'