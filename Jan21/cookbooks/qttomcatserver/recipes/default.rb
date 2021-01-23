#
# Cookbook:: qttomcatserver
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

if node['platform'] == 'ubuntu'
    include_recipe 'qttomcatserver::ubuntu_tomcat'
else
    raise "This cookbook is developed only for ubuntu"
    
end