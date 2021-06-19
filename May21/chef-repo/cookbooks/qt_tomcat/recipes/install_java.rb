#
# Cookbook:: qt_tomcat
# Recipe:: install_java
#
# Copyright:: 2021, The Authors, All Rights Reserved.

java_package = node['qt_tomcat']['java_package']

apt_update 'update packages' do
    ignore_failure true
    action :update
    only_if { node['platform'] == 'ubuntu' }
end

package java_package do
    action :install
end

