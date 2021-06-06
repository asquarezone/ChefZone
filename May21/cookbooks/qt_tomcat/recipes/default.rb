#
# Cookbook:: qt_tomcat
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

if node['platform'] == 'ubuntu' or node['platform'] == 'redhat'
    include_recipe 'qt_tomcat::install_java'
    include_recipe 'qt_tomcat::configure'
    include_recipe 'qt_tomcat::deploy'
else
    raise 'This cookbook supports only ubuntu and redhat platforms'
end