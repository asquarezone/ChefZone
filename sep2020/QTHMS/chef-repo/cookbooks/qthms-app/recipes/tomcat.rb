#
# Cookbook:: .
# Recipe:: tomcat
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# install java
java_package = node['qthms-app']['java_version']

openjdk_pkg_install java_package do
    action :install
end

tomcat_package = node['qthms-app']['tomcat_pkg']
package tomcat_package do
    action :install
    notifies :enable, "service[#{tomcat_package}]"
end

service tomcat_package do
    action :start
ends


