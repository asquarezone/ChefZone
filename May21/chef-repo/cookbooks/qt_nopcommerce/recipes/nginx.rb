#
# Cookbook:: qt_nopcommerce
# Recipe:: nginx
#
# Copyright:: 2021, The Authors, All Rights Reserved.

nginx_package = node['qt_nopcommerce']['nginx']['package_name']

package nginx_package do
    action :install
end

sites_available_path = node['qt_nopcommerce']['nginx']['sites_available']

template sites_available_path do
    source 'default.erb'
    action :create
end

