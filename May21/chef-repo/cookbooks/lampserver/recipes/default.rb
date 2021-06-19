#
# Cookbook:: lampserver
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
# recipe => lampserver::default => lampserver

if node['platform'] == 'ubuntu' or node['platform'] == 'redhat'
    include_recipe 'lampserver::apache'
else
    raise 'This cookbook is supporting only ubuntu and redhat distributions'
end
