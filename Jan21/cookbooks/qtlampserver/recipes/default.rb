#
# Cookbook:: qtlampserver
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

if node['platform'] == 'centos'
    include_recipe 'qtlampserver::lamp_centos'
end

if node['platform'] == 'ubuntu'
    include_recipe 'qtlampserver::lamp_ubuntu'
end

include_recipe 'qtlampserver::phppage'