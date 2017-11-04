#
# Cookbook:: .
# Recipe:: removeapache
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apache_package_name = node['nginx']['package_name_for_apache']

service apache_package_name do
  action :stop
end

package apache_package_name do
  action :remove
end

